import nltk
import matplotlib
tokenizer = nltk.RegexpTokenizer(r'\w+')
tokens = tokenizer.tokenize("Le conjonctif sous-jacent est fibreux, sans aucune infiltration suspecte. ETUDE IMMUNOHISTOCHIMIQUE SUR COUPE EN PARAFFINE (Machine automate Roche Ventana Benchmark XT-ULTRA) : CD3 (Polyclonal, Dako, 1/200)  : marquage diffus. CD20 (Clone L26, BIO SB, 1/1000) : rares éléments de taille moyenne ( marquage membranaire ). Kappa (POLY, Dako, 1/15 000), Lambda (POLY, Dako, 1/15 000) : marquages de densité comparable, signant la polyclonalité. CD5 (Clone 4C7, Thermo Scientific, 1/150) : négatif. Cet aspect associé au contexte morphologique confirme la bénignité de cette hypertrophie lymphoïde. CONCLUSION POLE SUPERIEUR AMYGDALE GAUCHE (biopsie) : Hyperplasie lymphoïde amygdalienne diffuse, au profil immunologique de lésion réactionnelle. Métaplasie malpighienne nodulaire au niveau de cryptes anciennes. Pas de malignité. ")
freq = nltk.FreqDist(tokens)
 
for key,val in freq.items():
    print (str(key) + ':' + str(val))
    
freq.plot(20, cumulative=False)
