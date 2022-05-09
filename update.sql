> use employeedb
switched to db employeedb
> db.createCollection("employees")
{ "ok" : 1 }
> db.employees.insertMany([{"eid":101,"ename":'abhi',"dept":'dp1',"desig":'manager',"salary":25000,"yoj":'2012-02-01',"address":{"dno":1,"street":'karicode',"locality":'kollam',"city":'kollam'}}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("6278c448c7d968d15e12d26a")
        ]
}
> db.employees.insertMany([{"eid":102,"ename":'ajil',"dept":'dp2',"desig":'teacher',"salary":55000,"yoj":'2013-02-05',"address":{"dno":2,"street":'kayamkulam',"locality":'alapuzha',"city":'kayamkulam'}}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("6278c4d1c7d968d15e12d26b")
        ]
}
> db.employees.updateOne({"desig":'teacher'},{$inc:{"salary":5000}})
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.employees.updateMany({$set:{"age":12}})
uncaught exception: TypeError: can't convert undefined to object :
DBCollection.prototype.updateMany@src/mongo/shell/crud_api.js:648:20
@(shell):1:1
> db.employees.updateMany({},{$set:{"age":12}})
{ "acknowledged" : true, "matchedCount" : 2, "modifiedCount" : 2 }
> db.employees.updateMany({},{$unset:{"age":12}})
{ "acknowledged" : true, "matchedCount" : 2, "modifiedCount" : 2 }
> db.employees.update({"desig":'teacher',{$push:{"sub":25}}})
uncaught exception: SyntaxError: expected property name, got '{' :
@(shell):1:39
> db.employees.update({"desig":'teacher'},{$push:{"sub":25}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"desig":'teacher'},{$push:{"sub":30}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"desig":'teacher'},{$pushAll:{"sub":[56,20,21]}})
WriteResult({
        "nMatched" : 0,
        "nUpserted" : 0,
        "nModified" : 0,
        "writeError" : {
                "code" : 9,
                "errmsg" : "Unknown modifier: $pushAll. Expected a valid update modifier or pipeline-style update specified as an array"
        }
})
> db.employees.update({"desig":'manager'},{$pushAll:{"sub":[56,20,21]}})
WriteResult({
        "nMatched" : 0,
        "nUpserted" : 0,
        "nModified" : 0,
        "writeError" : {
                "code" : 9,
                "errmsg" : "Unknown modifier: $pushAll. Expected a valid update modifier or pipeline-style update specified as an array"
        }
})
> db.employees.update({"desig":'manager'},{$pull:{"sub":25}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 0 })
> db.employees.update({"desig":'teacher'},{$pull:{"sub":25}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"desig":'teacher'},{$push:{"sub":[56,20,21]}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"desig":'teacher'},{$pullAll:{"sub":[56,20,21]}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 0 })
> db.employees.update({"desig":'teacher'},{$pull:{"sub":[56,20,21]}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"desig":'teacher'},{$addToSet:{"sub":21}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"desig":'teacher'},{$addToSet:{"sub":30}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 0 })
> db.employees.update({"eid":101},{$max:{"salary":30000}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"eid":101},{$max:{"salary":25000}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 0 })
> db.employees.update({"eid":101},{$min:{"salary":25000}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"eid":101},{$min:{"salary":30000}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 0 })
> db.employees.updateMany({"eid":101},{$set:{"address.street":'kallumthazham'}})
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.employees.updateMany({"eid":101},{$unset:{"address.street":'kallumthazham'}})
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.employees.update({"eid":101},{$push:{"address.landmark":20}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"eid":101},{$pull:{"address.landmark":20}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.update({"eid":101},{$addToSet:{"address.landmark":20}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.employees.aggregate([{$group:{"_id":"$dept","average":{$avg:"eid"}}}])
{ "_id" : "dp2", "average" : null }
{ "_id" : "dp1", "average" : null }
> db.employees.deleteOne({})
{ "acknowledged" : true, "deletedCount" : 1 }
> db.employees.deleteOne({})
