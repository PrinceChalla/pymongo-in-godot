import pymongo
import sys
from pymongo import MongoClient
cluster = MongoClient("mongodb+srv://kamsiosuachalla:Chimma1234#@firstcluster.dsfgzuj.mongodb.net/?retryWrites=true&w=majority&appName=firstcluster")
db = cluster["first_database"]
collection = db["first_collection"]
result = []
arg = sys.argv
def main():
    search(arg[1])

def search(query):
    for x in collection.find(query):
        result.append(x)
if __name__ == "__main__":
    main()