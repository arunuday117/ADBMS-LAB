> use college
switched to db college
> db.createCollection("studlist")
{ "ok" : 1 }
> db.studlist.insert({"name":{"fname":"Abhi","lname":"S"},"gender":"male","contact":{"no":054685490,"place":"kollam"},"dept":"mca","mark":85,"grade":"A"})
WriteResult({ "nInserted" : 1 })
> db.studlist.insert({"name":{"fname":"Abhijith","lname":"K"},"gender":"male","contact":{"no":0998588875,"place":"thiruvananthapuram"},"dept":"mca","mark":95,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
> db.studlist.insert({"name":{"fname":"Akhila","lname":"O"},"gender":"female","contact":{"no":9587857858,"place":"thiruvananthapuram"},"dept":"mca","mark":99,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
> db.studlist.insert({"name":{"fname":"Aswin","lname":"L P"},"gender":"male","contact":{"no":939859789,"place":"kollam"},"dept":"mc","mark":99,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
> db.studlist.insert({"name":{"fname":"Binu","lname":"P"},"gender":"male","contact":{"no":939859789,"place":"karicode"},"dept":"mc","mark":79,"grade":"B+"})
WriteResult({ "nInserted" : 1 })
> db.studlist.insert({"name":{"fname":"Bush","lname":"P"},"gender":"male","contact":{"no":939859789,"place":"karicode"},"dept":"mc","mark":89,"grade":"A"})
WriteResult({ "nInserted" : 1 })
> db.studlist.insert({"name":{"fname":"Jithu","lname":"P"},"gender":"male","contact":{"no":939859789,"place":"chavara"},"dept":"eee","mark":77,"grade":"A"})
WriteResult({ "nInserted" : 1 })
> db.studlist.insert({"name":{"fname":"Mini","lname":"P"},"gender":"female","contact":{"no":939859789,"place":"karicode"},"dept":"mca","mark":79,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
> db.studlist.insert({"name":{"fname":"Vani","lname":"P"},"gender":"female","contact":{"no":939859789,"place":"karicode"},"dept":"mc","mark":99,"grade":"A+"})
WriteResult({ "nInserted" : 1 })
> db.studlist.find({gender:"female",dept:"mca"},{name:1,mark:1})
{ "_id" : ObjectId("628ded5378fd5c7fac1eaeae"), "name" : { "fname" : "Akhila", "lname" : "O" }, "mark" : 99 }
> db.studlist.find({"dept":"mca"}).sort({"mark":-1}).limit(1).pretty()
{
        "_id" : ObjectId("628ded5378fd5c7fac1eaeae"),
        "name" : {
                "fname" : "Akhila",
                "lname" : "O"
        },
        "gender" : "female",
        "contact" : {
                "no" : 9587857858,
                "place" : "thiruvananthapuram"
        },
        "dept" : "mca",
        "mark" : 99,
        "grade" : "A+"
}
> db.studlist.find({"gender":"male","grade":"A+"}).pretty()
{
        "_id" : ObjectId("628ded1778fd5c7fac1eaead"),
        "name" : {
                "fname" : "Abhijith",
                "lname" : "K"
        },
        "gender" : "male",
        "contact" : {
                "no" : 998588875,
                "place" : "thiruvananthapuram"
        },
        "dept" : "mca",
        "mark" : 95,
        "grade" : "A+"
}
{
        "_id" : ObjectId("628ded9878fd5c7fac1eaeaf"),
        "name" : {
                "fname" : "Aswin",
                "lname" : "L P"
        },
        "gender" : "male",
        "contact" : {
                "no" : 939859789,
                "place" : "kollam"
        },
        "dept" : "mc",
        "mark" : 99,
        "grade" : "A+"
}
> db.studlist.find({"dept":"mc"}).sort({"mark":-1}).limit(3).pretty()
{
        "_id" : ObjectId("628df4f678fd5c7fac1eaeb4"),
        "name" : {
                "fname" : "Vani",
                "lname" : "P"
        },
        "gender" : "female",
        "contact" : {
                "no" : 939859789,
                "place" : "karicode"
        },
        "dept" : "mc",
        "mark" : 99,
        "grade" : "A+"
}
{
        "_id" : ObjectId("628ded9878fd5c7fac1eaeaf"),
        "name" : {
                "fname" : "Aswin",
                "lname" : "L P"
        },
        "gender" : "male",
        "contact" : {
                "no" : 939859789,
                "place" : "kollam"
        },
        "dept" : "mc",
        "mark" : 99,
        "grade" : "A+"
}
{
        "_id" : ObjectId("628deddf78fd5c7fac1eaeb1"),
        "name" : {
                "fname" : "Bush",
                "lname" : "P"
        },
        "gender" : "male",
        "contact" : {
                "no" : 939859789,
                "place" : "karicode"
        },
        "dept" : "mc",
        "mark" : 89,
        "grade" : "A"
}
> db.studlist.find({"gender":"female","mark":{$gt:90}}).pretty()
{
        "_id" : ObjectId("628ded5378fd5c7fac1eaeae"),
        "name" : {
                "fname" : "Akhila",
                "lname" : "O"
        },
        "gender" : "female",
        "contact" : {
                "no" : 9587857858,
                "place" : "thiruvananthapuram"
        },
        "dept" : "mca",
        "mark" : 99,
        "grade" : "A+"
}
{
        "_id" : ObjectId("628df4f678fd5c7fac1eaeb4"),
        "name" : {
                "fname" : "Vani",
                "lname" : "P"
        },
        "gender" : "female",
        "contact" : {
                "no" : 939859789,
                "place" : "karicode"
        },
        "dept" : "mc",
        "mark" : 99,
        "grade" : "A+"
}
> db.studlist.find({"mark":{$gt:80,$lt:90}}).pretty()
{
        "_id" : ObjectId("628decbb78fd5c7fac1eaeac"),
        "name" : {
                "fname" : "Abhi",
                "lname" : "S"
        },
        "gender" : "male",
        "contact" : {
                "no" : 54685490,
                "place" : "kollam"
        },
        "dept" : "mca",
        "mark" : 85,
        "grade" : "A"
}
{
        "_id" : ObjectId("628deddf78fd5c7fac1eaeb1"),
        "name" : {
                "fname" : "Bush",
                "lname" : "P"
        },
        "gender" : "male",
        "contact" : {
                "no" : 939859789,
                "place" : "karicode"
        },
        "dept" : "mc",
        "mark" : 89,
        "grade" : "A"
}
> db.studlist.find({"name.fname":{$regex:"^V"}}).pretty()
{
        "_id" : ObjectId("628df4f678fd5c7fac1eaeb4"),
        "name" : {
                "fname" : "Vani",
                "lname" : "P"
        },
        "gender" : "female",
        "contact" : {
                "no" : 939859789,
                "place" : "karicode"
        },
        "dept" : "mc",
        "mark" : 99,
        "grade" : "A+"
}
> db.studlist.find({"contact.place":"kollam"}).pretty()
{
        "_id" : ObjectId("628decbb78fd5c7fac1eaeac"),
        "name" : {
                "fname" : "Abhi",
                "lname" : "S"
        },
        "gender" : "male",
        "contact" : {
                "no" : 54685490,
                "place" : "kollam"
        },
        "dept" : "mca",
        "mark" : 85,
        "grade" : "A"
}
{
        "_id" : ObjectId("628ded9878fd5c7fac1eaeaf"),
        "name" : {
                "fname" : "Aswin",
                "lname" : "L P"
        },
        "gender" : "male",
        "contact" : {
                "no" : 939859789,
                "place" : "kollam"
        },
        "dept" : "mc",
        "mark" : 99,
        "grade" : "A+"
}
