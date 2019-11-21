# coding: utf-8
import nltk
from os import path

EXPORT_FORMAT = 'sql' # or csv
INPUT_FILE = '../data/data_reduced.html'
OUTPUT_FILE = '../data/out.' + EXPORT_FORMAT.lower()
TABLENAME = 'completion' # name of the database table (should have 2 columns)

def make_ngram(tokens, N=2):
    arr_ngram = []
    for i in range(len(tokens) - N + 1):
        arr_ngram.append(tokens[i:i + N])
    return arr_ngram

def calculate_frequency(arr_ngram):
    counts = {}
    for ngram in arr_ngram:
        token_seq = " ".join(ngram[:-1])
        last_token = ngram[-1]
        if token_seq not in counts:
            counts[token_seq] = {}
        if last_token not in counts[token_seq]:
            counts[token_seq][last_token] = 0
        counts[token_seq][last_token] += 1
    return counts

# from nltk.corpus import stopwords
# stopWords = set(stopwords.words('french'))
stopWords = []

from bs4 import BeautifulSoup

dirname = path.dirname(__file__)
#filename = path.join(dirname, '../data/data_janvier_fevrier_2017.html')
filename = path.join(dirname, INPUT_FILE)


dataRaw = open(INPUT_FILE, encoding="utf8")

soup = BeautifulSoup(dataRaw, 'html.parser')

dataArray = soup.findAll('tr')
reportArray = []

for k in dataArray:
    temp = k.find_all("td")
    if len(temp) >= 7:
        reportArray.append(temp[6].string)

tokenizer = nltk.RegexpTokenizer(r'\w+')

reports = ""
for report in reportArray:
    reports += report


tokens = []
words = tokenizer.tokenize(reports)
for w in words:
    if w not in stopWords:
        tokens.append(w)


for w in words:
    if w not in stopWords:
        tokens.append(w)

array = calculate_frequency(make_ngram(tokens))


for element in array:
    temp = []
    for e in array[element]:
        temp.append((e,array[element][e]))
    temp = sorted(temp, key=lambda el: el[1], reverse=True)
    array[element] = temp


fname = path.join(dirname, OUTPUT_FILE)
file = open(fname, "w")

try:
    
    if EXPORT_FORMAT.lower() == 'csv':
        import csv

        writer = csv.writer(file, delimiter=' ',
                            quotechar='|', quoting=csv.QUOTE_MINIMAL)

        writer.writerow(["Mots", "Voisins"])
        for key,val in array.items():
            writer.writerow((str(key),val))
    else:
        # MySQL support 'INSERT INTO table VALUES (1), (2), (3),
        sql_insert_order = 'INSERT INTO {} VALUES'.format(TABLENAME)
        for first_word,val in array.items():
            followers = ','.join([element[0] for element in val])
            sql_insert_order += '("{}","{}"),'.format(first_word, followers)
        file.write(sql_insert_order[:-1])  # delete last coma

finally:
    file.close()

