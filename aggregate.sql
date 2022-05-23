use candidate
switched to db candidate
> db.candidate.createCollection("details")
uncaught exception: TypeError: db.candidate.createCollection is not a function :
@(shell):1:1
> db.createCollection("details")
{ "ok" : 1 }
> db.detailes.insert({"name":"amal",age:25,gender:"male",amount:25000})
WriteResult({ "nInserted" : 1 })
> db.detailes.insert({"name":"anu",age:27,gender:"female",amount:27000})
WriteResult({ "nInserted" : 1 })
> db.detailes.insert({"name":"anul",age:29,gender:"male",amount:34000})
WriteResult({ "nInserted" : 1 })
> db.detailes.insert({"name":"ammu",age:19,gender:"female",amount:50000})
WriteResult({ "nInserted" : 1 })
> db.detailes.insert({"name":"kiran",age:23,gender:"male",amount:25000})
WriteResult({ "nInserted" : 1 })
> db.detailes.insert({"name":"hiru",age:25,gender:"female",amount:27000})
WriteResult({ "nInserted" : 1 })
> db.detailes.insert({"name":"nimal",age:15,gender:"male",amount:27000})
WriteResult({ "nInserted" : 1 })
> db.details.find({$or:[{gender:"male"},{age:{$lt:25}}]})
> db.details.find()
> db.detailes.find({$or:[{gender:"male"},{age:{$lt:25}}]})
{ "_id" : ObjectId("628b2e91d3194c1be243ebfd"), "name" : "amal", "age" : 25, "gender" : "male", "amount" : 25000 }
{ "_id" : ObjectId("628b2ec8d3194c1be243ebff"), "name" : "anul", "age" : 29, "gender" : "male", "amount" : 34000 }
{ "_id" : ObjectId("628b2ed8d3194c1be243ec00"), "name" : "ammu", "age" : 19, "gender" : "female", "amount" : 50000 }
{ "_id" : ObjectId("628b2eead3194c1be243ec01"), "name" : "kiran", "age" : 23, "gender" : "male", "amount" : 25000 }
{ "_id" : ObjectId("628b2f3dd3194c1be243ec03"), "name" : "nimal", "age" : 15, "gender" : "male", "amount" : 27000 }
> db.detailes.find({$or:[{gender:"male"},{age:{$lt:25}}]})
{ "_id" : ObjectId("628b2e91d3194c1be243ebfd"), "name" : "amal", "age" : 25, "gender" : "male", "amount" : 25000 }
{ "_id" : ObjectId("628b2ec8d3194c1be243ebff"), "name" : "anul", "age" : 29, "gender" : "male", "amount" : 34000 }
{ "_id" : ObjectId("628b2ed8d3194c1be243ec00"), "name" : "ammu", "age" : 19, "gender" : "female", "amount" : 50000 }
{ "_id" : ObjectId("628b2eead3194c1be243ec01"), "name" : "kiran", "age" : 23, "gender" : "male", "amount" : 25000 }
{ "_id" : ObjectId("628b2f3dd3194c1be243ec03"), "name" : "nimal", "age" : 15, "gender" : "male", "amount" : 27000 }
> db.detailes.aggregate($group[:{_id:"$group",total amount:{$sum:'$amount'}})
...
...
> db.detailes.aggregate([$group:{_id:"$group",total amount:{$sum:'$amount'}}])
uncaught exception: SyntaxError: missing ] after element list :
@(shell):1:29
> db.detailes.aggregate([{$group:{_id:"$gender",total amount:{$sum:'$amount'}}}])
uncaught exception: SyntaxError: missing : after property id :
@(shell):1:52
> db.detailes.aggregate([{$group:{'_id':"$gender",'total amount':{$sum:'$amount'}}}])
{ "_id" : "female", "total amount" : 104000 }
{ "_id" : "male", "total amount" : 111000 }
> db.detailes.aggregate([{$group:{_id:"$gender",'total amount':{$sum:'$amount'}}}])
{ "_id" : "male", "total amount" : 111000 }
{ "_id" : "female", "total amount" : 104000 }
> db.detailes.aggregate([{$match:{age:{$lt:25}},{$group:{_id:"$gender",'total amount':{$sum:'$amount'}}}])
...
...
>
>
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$sum:'$amount'}}}])
{ "_id" : "male", "total amount" : 52000 }
{ "_id" : "female", "total amount" : 50000 }
> db.detailes.aggregate([{$match:{age:{$gt:25}}},{$group:{_id:"$gender",'total amount':{$sum:'$amount'}}}])
{ "_id" : "male", "total amount" : 34000 }
{ "_id" : "female", "total amount" : 27000 }
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$avg:'$amount'}}}])
{ "_id" : "female", "total amount" : 50000 }
{ "_id" : "male", "total amount" : 26000 }
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$avg:'$amount'}}},{$sort:{avg:1}}])
{ "_id" : "female", "total amount" : 50000 }
{ "_id" : "male", "total amount" : 26000 }
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$avg:'$amount'}}},{$sort:{avg:-1}}])
{ "_id" : "female", "total amount" : 50000 }
{ "_id" : "male", "total amount" : 26000 }
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$avg:'$amount'}}},{$sort:{avg:0}}])
uncaught exception: Error: command failed: {
        "ok" : 0,
        "errmsg" : "$sort key ordering must be 1 (for ascending) or -1 (for descending)",
        "code" : 15975,
        "codeName" : "Location15975"
} with original command request: {
        "aggregate" : "detailes",
        "pipeline" : [
                {
                        "$match" : {
                                "age" : {
                                        "$lt" : 25
                                }
                        }
                },
                {
                        "$group" : {
                                "_id" : "$gender",
                                "total amount" : {
                                        "$avg" : "$amount"
                                }
                        }
                },
                {
                        "$sort" : {
                                "avg" : 0
                        }
                }
        ],
        "cursor" : {

        },
        "lsid" : {
                "id" : UUID("ccd97d6d-932f-402e-9d90-35de85482719")
        }
} on connection: connection to 127.0.0.1:27017 : aggregate failed :
_getErrorWithCode@src/mongo/shell/utils.js:25:13
doassert@src/mongo/shell/assert.js:18:14
_assertCommandWorked@src/mongo/shell/assert.js:737:17
assert.commandWorked@src/mongo/shell/assert.js:829:16
DB.prototype._runAggregate@src/mongo/shell/db.js:281:5
DBCollection.prototype.aggregate@src/mongo/shell/collection.js:1058:12
@(shell):1:1
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$avg:'$amount'}}},{$sort:{avg:1}}])
{ "_id" : "male", "total amount" : 26000 }
{ "_id" : "female", "total amount" : 50000 }
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$avg:'$amount'}}},{$sort:{avg:-1}}])
{ "_id" : "male", "total amount" : 26000 }
{ "_id" : "female", "total amount" : 50000 }
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$avg:'$amount'}}}])
{ "_id" : "female", "total amount" : 50000 }
{ "_id" : "male", "total amount" : 26000 }
> db.detailes.aggregate([{$match:{age:{$lt:25}}},{$group:{_id:"$gender",'total amount':{$avg:'$amount'}}},{$sort:{avg:-1}}])
