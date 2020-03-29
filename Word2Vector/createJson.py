import mysql.connector
import json
from nltk.tokenize import RegexpTokenizer
from nltk.corpus import stopwords 


tknzr = RegexpTokenizer(r'\w+')

stop_words = set(stopwords.words('french')) 

dictword = {}
fdist = {}
finalDict = {}

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="root",
  database="patho_search"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT `num_exam`,`rapport` FROM `database` WHERE 1")

myresult = mycursor.fetchall()

for echantillon in myresult:
  #print(echantillon[0])
  #print(tknzr.tokenize(echantillon[1]))
  word_tokens = tknzr.tokenize(echantillon[1])

  filtered_sentence = [w for w in word_tokens if not w in stop_words] 
  
  filtered_sentence = set(k.lower() for k in filtered_sentence)

  for word in filtered_sentence:
    if word in fdist:
        fdist[word] += 1
    else:
        fdist[word] = 1
            
    if word not in dictword:
        dictword[word] = None

sortedDictDescending = sorted(fdist.items(), key=lambda x: x[1],reverse=True)

for word in sortedDictDescending:
    finalDict[word[0]] = None

jsonfile = json.dumps(finalDict, indent = 4, ensure_ascii=False)

print(sortedDictDescending)
print(" ")
print(jsonfile)

with open('searchTag.json', 'w') as outfile:
    outfile.write(jsonfile)



