from typing import List
from urllib.request import urlopen
from bs4 import BeautifulSoup
import re

def AjoutNomDes():
    resultat = ""
    with open("scrapsite1.csv",'r') as fichier:
        for line in fichier:
            x = line.split(";")
            if len(x)==3:
                x.insert(1,"Ce produit ne possède pas de description.")
            resultat += ";".join(x)
        with open("scrap.csv","w")as fichier2:
            fichier2.write(resultat)

def RecupSite1(typeMedoc,url):
    request_page = urlopen(url)
    page_html = request_page.read()
    soup = BeautifulSoup(page_html, 'html.parser')
    listeTout=[]
    for tout in soup.find_all('div',class_="ais-hits--item"):
        listeTempo = []
        for nom in tout.find('h2'):
            listeTempo.append(nom.get_text())
        for des in tout.find('div', class_="product-description"):      
            listeTempo.append(des.get_text().replace("\r",". ").replace("\n","").strip()  )
        for prix in tout.find("span", class_="price"):
            listeTempo.append(re.sub("[ €]","",prix.get_text()).strip())
        resultat = ";".join(listeTempo)
        x = resultat.replace("\n",'')
        listeTout.append(x)
    csv = ""
    for x in listeTout:
        csv = x[:]+";"+typeMedoc+"\n"+csv
    print(typeMedoc," Terminé")
    csv = csv.replace("é","e")
    csv = csv.replace("è","e")
    csv = csv.replace("à","a")
    csv = csv.replace("â","a")
    csv = csv.replace("'"," ")
    csv = csv.replace("ô","o")
    return csv

def Site1():
    url_to_scrape = {"PS":"https://www.1001pharmacies.com/produit-de-sante-c14",
    "VI":"https://www.1001pharmacies.com/soin-pour-le-visage-c24",
    "MAT":"https://www.1001pharmacies.com/maternite-c18",
    "SEX":"https://www.1001pharmacies.com/produit-de-sante-c14/sexualite-intimite-c68",
    "VET":"https://www.1001pharmacies.com/veterinaire-c20",
    "FIT":"https://www.1001pharmacies.com/fitness-c17",
    "HYG":"https://www.1001pharmacies.com/produit-dhygiene-c15",
    "AA":"https://www.1001pharmacies.com/visage-c24/anti-age-c94",
    "COR":"https://www.1001pharmacies.com/corps-c12",
    "SOL":"https://www.1001pharmacies.com/solaire-c16",
    "MM":"https://www.1001pharmacies.com/materiel-medical-c559",
    "CA":"https://www.1001pharmacies.com/produit-de-sante-c14/complement-alimentaire-c62",
    "SCA":"https://www.1001pharmacies.com/produit-de-sante-c14/complement-alimentaire-c62/sommeil-complement-alimentaire-c656",
    "CHE":"https://www.1001pharmacies.com/produit-pour-cheveux-c13",
    "LI":"https://www.1001pharmacies.com/maternite-c18/laits-infantiles-c541",
    "BN":"https://www.1001pharmacies.com/bio-naturel-c962"}    
    resultat = ""

    for typeMedoc,url in url_to_scrape.items():
        resultat+= RecupSite1(typeMedoc,url)
    with open("scrapsite1.csv",'w') as fichier:
        fichier.write(resultat)
    AjoutNomDes()
          
#Recup renvoie une liste avec toute:s les infos par rapport a la page a scrapper
#url est l'url a scrapper
def RecupSite2(typeMedoc,url):
    request_page = urlopen(url)
    page_html = request_page.read()
    soup = BeautifulSoup(page_html, 'html.parser')
    listeTout=[]
    for tout in soup.find_all('div',class_="thumbnail product"):
        listeTempo = []
        for desNom in tout.find('div', class_="caption"):
            desNom = desNom.get_text().strip()
            listeDes = desNom.split("\n")
            if listeDes[0] == '':
                del listeDes[0]
            oui = "".join(listeDes)
            listeTempo.append(oui)
        for prix in tout.find("div", class_="price"):
            prixDecoupe = re.sub("[Prix moyen:€]","",prix.get_text())
            listeTempo.append(prixDecoupe.strip())
        resultat = ";".join(listeTempo)
        x = resultat.replace("\n",'')
        listeTout.append(x)
    csv = ""
    for x in listeTout:
        csv = x[1:]+";"+typeMedoc+"\n"+csv
    if typeMedoc =="DAM":
        csv = csv.replace(";Ordonnance obligatoire;;",'')
    print(typeMedoc," Terminé")
    csv = csv.replace("é","e")
    csv = csv.replace("è","e")
    csv = csv.replace("à","a")
    csv = csv.replace("â","a")
    csv = csv.replace("'"," ")
    csv = csv.replace("ô","o")
    return csv



#Site2 l'appel de cette fonction fait toute les categorie de tout les sites
def Site2():
    url_to_scrape = {"DF":"https://www.pharmanity.com/medicament/medicaments-douleurs-et-fievre-p15",
    "DAM":"https://www.pharmanity.com/medicament/medicaments-douleurs-articulaires-et-musculaires-p14",
    "ST":"https://www.pharmanity.com/medicament/medicaments-sevrage-tabagique-p1D",
    "SD":"https://www.pharmanity.com/medicament/medicaments-sevrage-tabagique-p1D",
    "AD":"https://www.pharmanity.com/medicament/medicaments-appareil-digestif-p11"}

    resultat = ""

    for typeMedoc,url in url_to_scrape.items():
        resultat+= RecupSite2(typeMedoc,url)

    with open("scrap.csv",'a') as fichier:
        fichier.write(resultat)
         
        
#TypeMedoc Ajoute les different type de medoc dans un fichier TypeMedicament.csv 
def TypeMedoc():
    with open("TypeMedicament.csv","w") as file:
        oui = "DF;Douleur et Fievre\nDAM;Douleurs Articulaires et Musculaires\nST;Sevrage Tabagique\nSD;Sommeil et Detente\nAD;Appareil Digestif\nPS;Produit Sante\n \
            VI;Visage\nMAT;Maternite\nSEX;Sexualite\nVET;Veterinaire\nFIT;Fitness\nHYG;Hygiene\nAA;Anti-Age\nCOR;Corps\nMM;Matereil Medical\nCA;Complement Alimentaire\n \
                SCA;Sommeil\nCHE;Cheveux\nLI;Lait Infantiles\nBN;Bio Naturel"
        file.write(oui)

Site1()
Site2()
TypeMedoc()
