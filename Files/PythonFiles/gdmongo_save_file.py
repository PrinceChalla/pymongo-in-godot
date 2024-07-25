import pymongo
import sys
from pymongo import MongoClient
cluster = MongoClient("mongodb+srv://kamsiosuachalla:Chimma1234#@firstcluster.dsfgzuj.mongodb.net/?retryWrites=true&w=majority&appName=firstcluster")
db = cluster["first_database"]
collection = db["first_collection"]
arg = sys.argv
import json
#Beginning of useless code

#post1 = {"name":"kamsi","value":"Best bro","sth":True}
"""for x in range(1000):
    collection.insert_one({"_id":(x+10),"name":"kamsi","value":"Best bro","sth":True})
post_count = collection.count_documents({})
results = collection.find()
for result in results:
    print(result)
print(post_count)"""

#End of useless code

def main():
    dictionary = json.loads(arg[1])
    save(dictionary)

def save(dictionary={}):
    collection.insert_one(dictionary)

if __name__ == "__main__":
    main()