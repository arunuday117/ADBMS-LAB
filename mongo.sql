Microsoft Windows [Version 10.0.15063]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Users\19MCA38>mongodb
'mongodb' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\19MCA38>mongo
MongoDB shell version v5.0.8
connecting to: mongodb://127.0.0.1:27017/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("df7245c2-5cb3-44c3-bf2c-9228826afcb5") }
MongoDB server version: 5.0.8
================
Warning: the "mongo" shell has been superseded by "mongosh",
which delivers improved usability and compatibility.The "mongo" shell has been deprecated and will be removed in
an upcoming release.
For installation instructions, see
https://docs.mongodb.com/mongodb-shell/install/
================
---
The server generated these startup warnings when booting:
        2225-01-01T00:01:03.102+05:30: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
---
---
        Enable MongoDB's free cloud-based monitoring service, which will then receive and display
        metrics about your deployment (disk utilization, CPU, operation statistics, etc).

        The monitoring data will be available on a MongoDB website with a unique URL accessible to you
        and anyone you share the URL with. MongoDB may use this information to make product
        improvements and to suggest MongoDB products and deployment options to you.

        To enable free monitoring, run the following command: db.enableFreeMonitoring()
        To permanently disable this reminder, run the following command: db.disableFreeMonitoring()
---
> use studentdb
switched to db studentdb
> db.createCollection("students")
{ "ok" : 1 }
> db.students.insert({"srn":101,"s_name":Abhi,"degree":bsc,"sem":2,"cgpa":7})
uncaught exception: ReferenceError: Abhi is not defined :
@(shell):1:31
> ^C
bye

C:\Users\19MCA38>mongo
MongoDB shell version v5.0.8
connecting to: mongodb://127.0.0.1:27017/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("7d1d0790-1a49-4076-8261-f20f647574ef") }
MongoDB server version: 5.0.8
================
Warning: the "mongo" shell has been superseded by "mongosh",
which delivers improved usability and compatibility.The "mongo" shell has been deprecated and will be removed in
an upcoming release.
For installation instructions, see
https://docs.mongodb.com/mongodb-shell/install/
================
---
The server generated these startup warnings when booting:
        2225-01-01T00:01:03.102+05:30: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
---
---
        Enable MongoDB's free cloud-based monitoring service, which will then receive and display
        metrics about your deployment (disk utilization, CPU, operation statistics, etc).

        The monitoring data will be available on a MongoDB website with a unique URL accessible to you
        and anyone you share the URL with. MongoDB may use this information to make product
        improvements and to suggest MongoDB products and deployment options to you.

        To enable free monitoring, run the following command: db.enableFreeMonitoring()
        To permanently disable this reminder, run the following command: db.disableFreeMonitoring()
---
> use studentdb
switched to db studentdb
> db.students.insert({"srn":101,"s_name":'Abhi',"degree":'bsc',"sem":2,"cgpa":7})
WriteResult({ "nInserted" : 1 })
> db.students.insert({"srn":102,"s_name":'Akhil',"degree":'bcom',"sem":1,"cgpa":6},{"srn":103,"s_name":'Akshaya',"degree":'bca',"sem":6,"cgpa":7},{"srn":104,"s_name":'Ashik',"degree":'bca',"sem":6,"cgpa":7},{"srn":105,"s_name":'Aswadev',"degree":'bca',"sem":5,"cgpa":7})
WriteResult({ "nInserted" : 1 })
> db.students.insertMany({"srn":103,"s_name":'Akshaya',"degree":'bca',"sem":6,"cgpa":7},{"srn":104,"s_name":'Ashik',"degree":'bca',"sem":6,"cgpa":7},{"srn":105,"s_name":'Aswadev',"degree":'bca',"sem":5,"cgpa":7})
uncaught exception: TypeError: documents.map is not a function :
DBCollection.prototype.insertMany@src/mongo/shell/crud_api.js:307:17
@(shell):1:1
> db.students.insertMany([{"srn":103,"s_name":'Akshaya',"degree":'bca',"sem":6,"cgpa":7},{"srn":104,"s_name":'Ashik',"degree":'bca',"sem":6,"cgpa":7},{"srn":105,"s_name":'Aswadev',"degree":'bca',"sem":5,"cgpa":7}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("6278a70981ce975f1349a634"),
                ObjectId("6278a70981ce975f1349a635"),
                ObjectId("6278a70981ce975f1349a636")
        ]
}
> db.students.insertMany([{"srn":106,"s_name":'Bharath',"degree":'bca',"sem":1,"cgpa":4},{"srn":107,"s_name":'Rahul',"degree":'bca',"sem":6,"cgpa":7},{"srn":108,"s_name":'Rahul',"degree":'bcom',"sem":5,"cgpa":7},])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("6278a78881ce975f1349a637"),
                ObjectId("6278a78881ce975f1349a638"),
                ObjectId("6278a78881ce975f1349a639")
        ]
}
> db.students.insertMany([{"srn":109,"s_name":'Shiva',"degree":'bsc',"sem":1,"cgpa":4},{"srn":110,"s_name":'Shanoop',"degree":'bca',"sem":6,"cgpa":7}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("6278a7d081ce975f1349a63a"),
                ObjectId("6278a7d081ce975f1349a63b")
        ]
}
> db.students.find()
{ "_id" : ObjectId("6278a39781ce975f1349a632"), "srn" : 101, "s_name" : "Abhi", "degree" : "bsc", "sem" : 2, "cgpa" : 7 }
{ "_id" : ObjectId("6278a64a81ce975f1349a633"), "srn" : 102, "s_name" : "Akhil", "degree" : "bcom", "sem" : 1, "cgpa" : 6 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "srn" : 104, "s_name" : "Ashik", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "srn" : 105, "s_name" : "Aswadev", "degree" : "bca", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a637"), "srn" : 106, "s_name" : "Bharath", "degree" : "bca", "sem" : 1, "cgpa" : 4 }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "degree" : "bcom", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a7d081ce975f1349a63a"), "srn" : 109, "s_name" : "Shiva", "degree" : "bsc", "sem" : 1, "cgpa" : 4 }
{ "_id" : ObjectId("6278a7d081ce975f1349a63b"), "srn" : 110, "s_name" : "Shanoop", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find().pretty()
{
        "_id" : ObjectId("6278a39781ce975f1349a632"),
        "srn" : 101,
        "s_name" : "Abhi",
        "degree" : "bsc",
        "sem" : 2,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a64a81ce975f1349a633"),
        "srn" : 102,
        "s_name" : "Akhil",
        "degree" : "bcom",
        "sem" : 1,
        "cgpa" : 6
}
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a635"),
        "srn" : 104,
        "s_name" : "Ashik",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a639"),
        "srn" : 108,
        "s_name" : "Rahul",
        "degree" : "bcom",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a7d081ce975f1349a63a"),
        "srn" : 109,
        "s_name" : "Shiva",
        "degree" : "bsc",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a7d081ce975f1349a63b"),
        "srn" : 110,
        "s_name" : "Shanoop",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find("degree":'bca')
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:25
> db.students.find({"degree":'bca'})
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "srn" : 104, "s_name" : "Ashik", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "srn" : 105, "s_name" : "Aswadev", "degree" : "bca", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a637"), "srn" : 106, "s_name" : "Bharath", "degree" : "bca", "sem" : 1, "cgpa" : 4 }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a7d081ce975f1349a63b"), "srn" : 110, "s_name" : "Shanoop", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find({"degree":'bca'}).pretty()
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a635"),
        "srn" : 104,
        "s_name" : "Ashik",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a7d081ce975f1349a63b"),
        "srn" : 110,
        "s_name" : "Shanoop",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find({"degree":'bca'}).pretty().sort(1)
Error: error: {
        "ok" : 0,
        "errmsg" : "Expected field sortto be of type object",
        "code" : 14,
        "codeName" : "TypeMismatch"
}
> db.students.find({"degree":'bca'}).pretty().sort({"s_name":1})
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a635"),
        "srn" : 104,
        "s_name" : "Ashik",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a7d081ce975f1349a63b"),
        "srn" : 110,
        "s_name" : "Shanoop",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find({"degree":'bca'}).pretty().sort({"s_name":-1})
{
        "_id" : ObjectId("6278a7d081ce975f1349a63b"),
        "srn" : 110,
        "s_name" : "Shanoop",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a635"),
        "srn" : 104,
        "s_name" : "Ashik",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find({"degree":'bca'}).pretty().limit(5)
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a635"),
        "srn" : 104,
        "s_name" : "Ashik",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find().pretty().limit(5)
{
        "_id" : ObjectId("6278a39781ce975f1349a632"),
        "srn" : 101,
        "s_name" : "Abhi",
        "degree" : "bsc",
        "sem" : 2,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a64a81ce975f1349a633"),
        "srn" : 102,
        "s_name" : "Akhil",
        "degree" : "bcom",
        "sem" : 1,
        "cgpa" : 6
}
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a635"),
        "srn" : 104,
        "s_name" : "Ashik",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
> db.students.find().pretty().skip(4).limit(3)
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find("s_name":'Rahul').pretty()
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:25
> db.students.find({"s_name":'Rahul'}).pretty()
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a639"),
        "srn" : 108,
        "s_name" : "Rahul",
        "degree" : "bcom",
        "sem" : 5,
        "cgpa" : 7
}
> db.students.find({"s_name":'Rahul'},degree).pretty()
uncaught exception: ReferenceError: degree is not defined :
@(shell):1:19
> db.students.find({"s_name":'Rahul'},{"degree"}).pretty()
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:45
> db.students.findOne({"s_name":'Rahul'}).pretty()
uncaught exception: TypeError: db.students.findOne(...).pretty is not a function :
@(shell):1:1
> db.students.findOne({"s_name":'Rahul'})
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.findOne("degree":{"s_name":'Rahul'})
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:28
> db.students.findOne({"degree":{"s_name":'Rahul'}})
null
> db.students.find({"degree":{"s_name":'Rahul'}})
> db.students.find({degree:{"s_name":'Rahul'}})
> db.students.find({degree:{$cond:{"s_name":'Rahul'}}})
Error: error: {
        "ok" : 0,
        "errmsg" : "unknown operator: $cond",
        "code" : 2,
        "codeName" : "BadValue"
}
> db.students.find({},{"s_name":'Rahul'})
{ "_id" : ObjectId("6278a39781ce975f1349a632"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a64a81ce975f1349a633"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a637"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a7d081ce975f1349a63a"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a7d081ce975f1349a63b"), "s_name" : "Rahul" }
> db.students.find({},{"s_name":'Rahul'},"degree")
{ "_id" : ObjectId("6278a39781ce975f1349a632"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a64a81ce975f1349a633"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a637"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a7d081ce975f1349a63a"), "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a7d081ce975f1349a63b"), "s_name" : "Rahul" }
> db.students.find({},{"s_name":'Rahul'},{"degree"})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:48
> db.students.find({},{"s_name":'Rahul'},{"degree":})
uncaught exception: SyntaxError: expected expression, got '}' :
@(shell):1:49
> db.students.find({"s_name":'Rahul'},{"degree":})
uncaught exception: SyntaxError: expected expression, got '}' :
@(shell):1:46
> db.students.find({degree:{"s_name":'Rahul'}})
> db.students.find({"degree:1"},{"s_name":'Rahul'}})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:28
> db.students.find({},{"degree:1"},{"s_name":'Rahul'}})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:31
> db.students.find({},{"s_name":'Rahul'},{"degree:1"})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:50
> db.students.find({"s_name":'Rahul'},{"degree:1"})
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:47
> db.students.find({"s_name":'Rahul'})
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "degree" : "bcom", "sem" : 5, "cgpa" : 7 }
> db.students.find({"s_name":'Rahul',"degree":1})
> db.students.find({"s_name":'Rahul',"degree":0})
> db.students.find({},{"s_name":'Rahul',"degree":0})
Error: error: {
        "ok" : 0,
        "errmsg" : "Cannot do exclusion on field degree in inclusion projection",
        "code" : 31254,
        "codeName" : "Location31254"
}
> db.students.find({},{"s_name":'Rahul',"degree":1})
{ "_id" : ObjectId("6278a39781ce975f1349a632"), "degree" : "bsc", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a64a81ce975f1349a633"), "degree" : "bcom", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "degree" : "bca", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "degree" : "bca", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "degree" : "bca", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a637"), "degree" : "bca", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "degree" : "bca", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "degree" : "bcom", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a7d081ce975f1349a63a"), "degree" : "bsc", "s_name" : "Rahul" }
{ "_id" : ObjectId("6278a7d081ce975f1349a63b"), "degree" : "bca", "s_name" : "Rahul" }
> db.students.find({},{"s_name":'Rahul'},"{degree":1})
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:48
> db.students.find({},{"s_name":'Rahul'},"{s_name":1,degree":1})
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:48
> db.students.find({},{"s_name":'Rahul'},"{"_id":1,s_name":1,degree":1})
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:42
> db.students.find({"s_name":'Rahul'},"{"_id":1,s_name":1,degree":1})
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:39
> db.students.find({"s_name":'Rahul'},{"s_name":1,degree":1})
uncaught exception: SyntaxError: "" literal not terminated before end of script :
@(shell):1:59
> db.students.find({"s_name":'Rahul'},{"s_name":1,"degree":1})
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "s_name" : "Rahul", "degree" : "bca" }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "s_name" : "Rahul", "degree" : "bcom" }
> db.students.find({"s_name":'Rahul'},{"s_name":1,"degree":0})
Error: error: {
        "ok" : 0,
        "errmsg" : "Cannot do exclusion on field degree in inclusion projection",
        "code" : 31254,
        "codeName" : "Location31254"
}
> db.students.find({"s_name":'Rahul'},{"degree":0})
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "sem" : 5, "cgpa" : 7 }
> db.students.find({"s_name":'Rahul'},{"s_name":1,"degree":0})
Error: error: {
        "ok" : 0,
        "errmsg" : "Cannot do exclusion on field degree in inclusion projection",
        "code" : 31254,
        "codeName" : "Location31254"
}
> db.students.find({"s_name":'Rahul'},{"_id":0,"s_name":1,"degree":0})
Error: error: {
        "ok" : 0,
        "errmsg" : "Cannot do exclusion on field degree in inclusion projection",
        "code" : 31254,
        "codeName" : "Location31254"
}
> db.students.find({"s_name":'Rahul'},{"_id":0,"degree":0})
{ "srn" : 107, "s_name" : "Rahul", "sem" : 6, "cgpa" : 7 }
{ "srn" : 108, "s_name" : "Rahul", "sem" : 5, "cgpa" : 7 }
> db.students.find({"s_name":'Rahul'},{"_id":0,"degree":1})
{ "degree" : "bca" }
{ "degree" : "bcom" }
> db.students.find({"s_name":'Rahul'},{"_id":0,"s_name":1","degree":1})
uncaught exception: SyntaxError: missing } after property list :
@(shell):1:55
> db.students.find({"s_name":'Rahul'},{"_id":0,"s_name":1,"degree":1})
{ "s_name" : "Rahul", "degree" : "bca" }
{ "s_name" : "Rahul", "degree" : "bcom" }
> db.students.find().pretty().skip(4).limit(3).sort({"s_name":-1})
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a635"),
        "srn" : 104,
        "s_name" : "Ashik",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find().pretty().skip(4).limit(3).sort({"cgps":-1})
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find().pretty().skip(4).limit(3).sort({"cgpa":-1})
{
        "_id" : ObjectId("6278a78881ce975f1349a639"),
        "srn" : 108,
        "s_name" : "Rahul",
        "degree" : "bcom",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find().pretty().skip(4).limit(3).sort({"cgpa":-1})
{
        "_id" : ObjectId("6278a78881ce975f1349a639"),
        "srn" : 108,
        "s_name" : "Rahul",
        "degree" : "bcom",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find().skip(4).limit(3).sort({"cgpa":-1})
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "degree" : "bcom", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find().skip(4).limit(3).sort({"cgpa":1})
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "srn" : 105, "s_name" : "Aswadev", "degree" : "bca", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a39781ce975f1349a632"), "srn" : 101, "s_name" : "Abhi", "degree" : "bsc", "sem" : 2, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find().pretty().skip(4).limit(3).sort({"srn":-1})
{
        "_id" : ObjectId("6278a78881ce975f1349a637"),
        "srn" : 106,
        "s_name" : "Bharath",
        "degree" : "bca",
        "sem" : 1,
        "cgpa" : 4
}
{
        "_id" : ObjectId("6278a70981ce975f1349a636"),
        "srn" : 105,
        "s_name" : "Aswadev",
        "degree" : "bca",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a635"),
        "srn" : 104,
        "s_name" : "Ashik",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find().pretty().sort({.skip(4).limit(3)
...
...
>
>
> db.students.find().pretty().sort({"cgpa":-1}).skip(4).limit(3)
{
        "_id" : ObjectId("6278a78881ce975f1349a639"),
        "srn" : 108,
        "s_name" : "Rahul",
        "degree" : "bcom",
        "sem" : 5,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a70981ce975f1349a634"),
        "srn" : 103,
        "s_name" : "Akshaya",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
{
        "_id" : ObjectId("6278a78881ce975f1349a638"),
        "srn" : 107,
        "s_name" : "Rahul",
        "degree" : "bca",
        "sem" : 6,
        "cgpa" : 7
}
> db.students.find({}).skip(4).limit(3).sort({"cgpa":1})
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "srn" : 105, "s_name" : "Aswadev", "degree" : "bca", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a39781ce975f1349a632"), "srn" : 101, "s_name" : "Abhi", "degree" : "bsc", "sem" : 2, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find({}).skip(4).limit(3).sort({"cgpa":-1})
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "degree" : "bcom", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find({}).skip(4).limit(3).sort({"cgpa":-1},"_id":1)
uncaught exception: SyntaxError: missing ) after argument list :
@(shell):1:60
> db.students.find({}).skip(4).limit(3).sort({"cgpa":-1,"_id":1})
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "degree" : "bcom", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a7d081ce975f1349a63b"), "srn" : 110, "s_name" : "Shanoop", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find({}).skip(4).limit(3).sort({"_id":-1,"cgpa":-1})
{ "_id" : ObjectId("6278a78881ce975f1349a637"), "srn" : 106, "s_name" : "Bharath", "degree" : "bca", "sem" : 1, "cgpa" : 4 }
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "srn" : 105, "s_name" : "Aswadev", "degree" : "bca", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "srn" : 104, "s_name" : "Ashik", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find({}).skip(5).limit(3).sort({"_id":-1,"cgpa":-1})
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "srn" : 105, "s_name" : "Aswadev", "degree" : "bca", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "srn" : 104, "s_name" : "Ashik", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find({}).skip(3).limit(3).sort({"_id":-1,"cgpa":-1})
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a637"), "srn" : 106, "s_name" : "Bharath", "degree" : "bca", "sem" : 1, "cgpa" : 4 }
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "srn" : 105, "s_name" : "Aswadev", "degree" : "bca", "sem" : 5, "cgpa" : 7 }
> db.students.find({}).skip(3).limit(3).sort({"cgpa":-1,"_id":-1})
{ "_id" : ObjectId("6278a70981ce975f1349a636"), "srn" : 105, "s_name" : "Aswadev", "degree" : "bca", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "srn" : 104, "s_name" : "Ashik", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find({}).skip(4).limit(3).sort({"cgpa":-1,"_id":-1})
{ "_id" : ObjectId("6278a70981ce975f1349a635"), "srn" : 104, "s_name" : "Ashik", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a39781ce975f1349a632"), "srn" : 101, "s_name" : "Abhi", "degree" : "bsc", "sem" : 2, "cgpa" : 7 }
> db.students.find({}).skip(4).limit(3).sort({"cgpa":-1,"_id":1})
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "degree" : "bcom", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a7d081ce975f1349a63b"), "srn" : 110, "s_name" : "Shanoop", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find({}).skip(4).limit(3).sort({"cgpa":-1})
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "degree" : "bcom", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
> db.students.find().skip(4).limit(3).sort({"cgpa":-1})
{ "_id" : ObjectId("6278a78881ce975f1349a639"), "srn" : 108, "s_name" : "Rahul", "degree" : "bcom", "sem" : 5, "cgpa" : 7 }
{ "_id" : ObjectId("6278a70981ce975f1349a634"), "srn" : 103, "s_name" : "Akshaya", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
{ "_id" : ObjectId("6278a78881ce975f1349a638"), "srn" : 107, "s_name" : "Rahul", "degree" : "bca", "sem" : 6, "cgpa" : 7 }
