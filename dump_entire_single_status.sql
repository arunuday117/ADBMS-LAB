first install mongodump from https://www.mongodb.com/try/download/database-tools?tck=docs_databasetools
open cmd as administrator
###cmd
cd C:\Program Files\MongoDB\Tools\100\bin
###shell
> show dbs
admin      0.000GB
anu        0.000GB
candidate  0.000GB
college    0.000GB
config     0.000GB
local      0.000GB
studentdb  0.000GB
###cmd
###entire dbs
C:\Program Files\MongoDB\Tools\100\bin>mongodump
2022-05-31T10:57:42.969+0530    writing admin.system.version to dump\admin\system.version.bson
2022-05-31T10:57:42.973+0530    done dumping admin.system.version (1 document)
2022-05-31T10:57:42.974+0530    writing anu.tutorial to dump\anu\tutorial.bson
2022-05-31T10:57:43.041+0530    done dumping anu.tutorial (1 document)
2022-05-31T10:57:43.042+0530    writing college.studlist to dump\college\studlist.bson
2022-05-31T10:57:43.071+0530    done dumping college.studlist (9 documents)
2022-05-31T10:57:43.072+0530    writing studentdb.students to dump\studentdb\students.bson
2022-05-31T10:57:43.087+0530    done dumping studentdb.students (10 documents)
2022-05-31T10:57:43.277+0530    writing candidate.details to dump\candidate\details.bson
2022-05-31T10:57:43.278+0530    writing candidate.detailes to dump\candidate\detailes.bson
2022-05-31T10:57:43.279+0530    writing anu.hello to dump\anu\hello.bson
2022-05-31T10:57:43.299+0530    done dumping candidate.details (0 documents)
2022-05-31T10:57:43.307+0530    done dumping anu.hello (0 documents)
2022-05-31T10:57:43.337+0530    done dumping candidate.detailes (7 documents)
###shell
> use anu
switched to db anu
> db.dropDatabase()
{ "ok" : 1 }
> show dbs
admin      0.000GB
candidate  0.000GB
college    0.000GB
config     0.000GB
local      0.000GB
studentdb  0.000GB
###cmd
C:\Program Files\MongoDB\Tools\100\bin>mongorestore
2022-05-31T11:00:59.556+0530    using default 'dump' directory
2022-05-31T11:00:59.559+0530    preparing collections to restore from
2022-05-31T11:00:59.562+0530    reading metadata for anu.hello from dump\anu\hello.metadata.json
2022-05-31T11:00:59.563+0530    reading metadata for anu.tutorial from dump\anu\tutorial.metadata.json
2022-05-31T11:00:59.563+0530    reading metadata for candidate.detailes from dump\candidate\detailes.metadata.json
2022-05-31T11:00:59.563+0530    reading metadata for candidate.details from dump\candidate\details.metadata.json
2022-05-31T11:00:59.563+0530    reading metadata for college.studlist from dump\college\studlist.metadata.json
2022-05-31T11:00:59.563+0530    reading metadata for studentdb.students from dump\studentdb\students.metadata.json
2022-05-31T11:00:59.564+0530    restoring to existing collection college.studlist without dropping
2022-05-31T11:00:59.564+0530    restoring college.studlist from dump\college\studlist.bson
2022-05-31T11:00:59.565+0530    restoring to existing collection studentdb.students without dropping
2022-05-31T11:00:59.566+0530    restoring to existing collection candidate.detailes without dropping
2022-05-31T11:00:59.566+0530    restoring studentdb.students from dump\studentdb\students.bson
2022-05-31T11:00:59.567+0530    restoring candidate.detailes from dump\candidate\detailes.bson
2022-05-31T11:00:59.708+0530    restoring anu.tutorial from dump\anu\tutorial.bson
2022-05-31T11:00:59.732+0530    finished restoring anu.tutorial (1 document, 0 failures)
2022-05-31T11:00:59.843+0530    restoring anu.hello from dump\anu\hello.bson
2022-05-31T11:00:59.854+0530    finished restoring anu.hello (0 documents, 0 failures)
2022-05-31T11:00:59.854+0530    restoring to existing collection candidate.details without dropping
2022-05-31T11:00:59.856+0530    restoring candidate.details from dump\candidate\details.bson
2022-05-31T11:00:59.868+0530    finished restoring candidate.details (0 documents, 0 failures)
2022-05-31T11:00:59.996+0530    continuing through error: E11000 duplicate key error collection: candidate.detailes index: _id_ dup key: { _id: ObjectId('628b2e91d3194c1be243ebfd') }
2022-05-31T11:00:59.996+0530    continuing through error: E11000 duplicate key error collection: candidate.detailes index: _id_ dup key: { _id: ObjectId('628b2eb4d3194c1be243ebfe') }
2022-05-31T11:00:59.999+0530    continuing through error: E11000 duplicate key error collection: candidate.detailes index: _id_ dup key: { _id: ObjectId('628b2ec8d3194c1be243ebff') }
2022-05-31T11:01:00.001+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a39781ce975f1349a632') }
2022-05-31T11:01:00.002+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628decbb78fd5c7fac1eaeac') }
2022-05-31T11:01:00.003+0530    continuing through error: E11000 duplicate key error collection: candidate.detailes index: _id_ dup key: { _id: ObjectId('628b2ed8d3194c1be243ec00') }
2022-05-31T11:01:00.004+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a64a81ce975f1349a633') }
2022-05-31T11:01:00.004+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628ded1778fd5c7fac1eaead') }
2022-05-31T11:01:00.005+0530    continuing through error: E11000 duplicate key error collection: candidate.detailes index: _id_ dup key: { _id: ObjectId('628b2eead3194c1be243ec01') }
2022-05-31T11:01:00.005+0530    continuing through error: E11000 duplicate key error collection: candidate.detailes index: _id_ dup key: { _id: ObjectId('628b2f02d3194c1be243ec02') }
2022-05-31T11:01:00.005+0530    continuing through error: E11000 duplicate key error collection: candidate.detailes index: _id_ dup key: { _id: ObjectId('628b2f3dd3194c1be243ec03') }
2022-05-31T11:01:00.006+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a70981ce975f1349a634') }
2022-05-31T11:01:00.006+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a70981ce975f1349a635') }
2022-05-31T11:01:00.007+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628ded5378fd5c7fac1eaeae') }
2022-05-31T11:01:00.008+0530    finished restoring candidate.detailes (0 documents, 7 failures)
2022-05-31T11:01:00.009+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a70981ce975f1349a636') }
2022-05-31T11:01:00.009+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628ded9878fd5c7fac1eaeaf') }
2022-05-31T11:01:00.009+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628dedc578fd5c7fac1eaeb0') }
2022-05-31T11:01:00.010+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628deddf78fd5c7fac1eaeb1') }
2022-05-31T11:01:00.010+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a78881ce975f1349a637') }
2022-05-31T11:01:00.010+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a78881ce975f1349a638') }
2022-05-31T11:01:00.010+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a78881ce975f1349a639') }
2022-05-31T11:01:00.010+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a7d081ce975f1349a63a') }
2022-05-31T11:01:00.011+0530    continuing through error: E11000 duplicate key error collection: studentdb.students index: _id_ dup key: { _id: ObjectId('6278a7d081ce975f1349a63b') }
2022-05-31T11:01:00.011+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628dee0578fd5c7fac1eaeb2') }
2022-05-31T11:01:00.011+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628df4be78fd5c7fac1eaeb3') }
2022-05-31T11:01:00.011+0530    continuing through error: E11000 duplicate key error collection: college.studlist index: _id_ dup key: { _id: ObjectId('628df4f678fd5c7fac1eaeb4') }
2022-05-31T11:01:00.012+0530    finished restoring college.studlist (0 documents, 9 failures)
2022-05-31T11:01:00.012+0530    finished restoring studentdb.students (0 documents, 10 failures)
2022-05-31T11:01:00.012+0530    no indexes to restore for collection anu.tutorial
2022-05-31T11:01:00.013+0530    no indexes to restore for collection college.studlist
2022-05-31T11:01:00.013+0530    no indexes to restore for collection anu.hello
2022-05-31T11:01:00.013+0530    no indexes to restore for collection candidate.detailes
2022-05-31T11:01:00.013+0530    no indexes to restore for collection candidate.details
2022-05-31T11:01:00.013+0530    no indexes to restore for collection studentdb.students
2022-05-31T11:01:00.014+0530    1 document(s) restored successfully. 26 document(s) failed to restore.
###shell
> show dbs
admin      0.000GB
anu        0.000GB
candidate  0.000GB
college    0.000GB
config     0.000GB
local      0.000GB
studentdb  0.000GB
###single db drop
###cmd
C:\Program Files\MongoDB\Tools\100\bin>mongodump --db=anu
2022-05-31T11:05:36.009+0530    writing anu.hello to dump\anu\hello.bson
2022-05-31T11:05:36.010+0530    done dumping anu.hello (0 documents)
2022-05-31T11:05:36.310+0530    writing anu.tutorial to dump\anu\tutorial.bson
2022-05-31T11:05:36.314+0530    done dumping anu.tutorial (1 document)
###shell
> show dbs
admin      0.000GB
anu        0.000GB
candidate  0.000GB
college    0.000GB
config     0.000GB
local      0.000GB
studentdb  0.000GB
> use anu
switched to db anu
> db.dropDatabase()
{ "ok" : 1 }
###cmd
C:\Program Files\MongoDB\Tools\100\bin>mongorestore --db=anu dump/anu
2022-05-31T11:08:47.931+0530    The --db and --collection flags are deprecated for this use-case; please use --nsInclude instead, i.e. with --nsInclude=${DATABASE}.${COLLECTION}
2022-05-31T11:08:47.931+0530    building a list of collections to restore from dump\anu dir
2022-05-31T11:08:47.932+0530    reading metadata for anu.hello from dump\anu\hello.metadata.json
2022-05-31T11:08:47.932+0530    reading metadata for anu.tutorial from dump\anu\tutorial.metadata.json
2022-05-31T11:08:48.238+0530    restoring anu.tutorial from dump\anu\tutorial.bson
2022-05-31T11:08:48.282+0530    finished restoring anu.tutorial (1 document, 0 failures)
2022-05-31T11:08:48.360+0530    restoring anu.hello from dump\anu\hello.bson
2022-05-31T11:08:48.372+0530    finished restoring anu.hello (0 documents, 0 failures)
2022-05-31T11:08:48.372+0530    no indexes to restore for collection anu.hello
2022-05-31T11:08:48.373+0530    no indexes to restore for collection anu.tutorial
2022-05-31T11:08:48.373+0530    1 document(s) restored successfully. 0 document(s) failed to restore.
###shell
> show dbs
admin      0.000GB
anu        0.000GB
candidate  0.000GB
college    0.000GB
config     0.000GB
local      0.000GB
studentdb  0.000GB
###collection backup
###cmd
C:\Program Files\MongoDB\Tools\100\bin>mongodump --db candidate --collection detailes
2022-05-31T11:13:55.429+0530    writing candidate.detailes to dump\candidate\detailes.bson
2022-05-31T11:13:55.430+0530    done dumping candidate.detailes (7 documents)
###shell
> use candidate
switched to db candidate
> show collections
detailes
details
> db.detailes.drop()
true
> show collections
details
###cmd
C:\Program Files\MongoDB\Tools\100\bin>mongorestore --db candidate --collection detailes dump/candidate/detailes.bson
2022-05-31T11:18:23.625+0530    checking for collection data in dump\candidate\detailes.bson
2022-05-31T11:18:23.628+0530    reading metadata for candidate.detailes from dump\candidate\detailes.metadata.json
2022-05-31T11:18:23.720+0530    restoring candidate.detailes from dump\candidate\detailes.bson
2022-05-31T11:18:23.764+0530    finished restoring candidate.detailes (7 documents, 0 failures)
2022-05-31T11:18:23.764+0530    no indexes to restore for collection candidate.detailes
2022-05-31T11:18:23.765+0530    7 document(s) restored successfully. 0 document(s) failed to restore.
###shell
> show collections
detailes
details
###status
###cmd
C:\Program Files\MongoDB\Tools\100\bin>mongostat
insert query update delete getmore command dirty used flushes vsize   res qrw arw net_in net_out conn                time
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   243b   53.0k   27 May 31 11:23:31.554
    *0    *0     *0     *0       0     3|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   298b   53.3k   27 May 31 11:23:32.553
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   111b   52.5k   27 May 31 11:23:33.557
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   112b   52.9k   27 May 31 11:23:34.552
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   166b   52.9k   27 May 31 11:23:35.553
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   111b   52.5k   27 May 31 11:23:36.556
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   112b   52.8k   27 May 31 11:23:37.553
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   111b   52.6k   27 May 31 11:23:38.553
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   112b   52.9k   27 May 31 11:23:39.547
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   306b   53.0k   27 May 31 11:23:40.553
insert query update delete getmore command dirty used flushes vsize   res qrw arw net_in net_out conn                time
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   242b   52.9k   27 May 31 11:23:41.555
    *0    *0     *0     *0       0     3|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   298b   53.4k   27 May 31 11:23:42.553
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   111b   52.6k   27 May 31 11:23:43.553
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   112b   53.1k   27 May 31 11:23:44.545
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       1 1.40G 99.0M 0|0 0|0   110b   52.1k   27 May 31 11:23:45.555
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   167b   53.1k   27 May 31 11:23:46.553
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   112b   52.7k   27 May 31 11:23:47.553
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   111b   52.6k   27 May 31 11:23:48.553
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   112b   52.7k   27 May 31 11:23:49.553
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   307b   53.2k   27 May 31 11:23:50.553
insert query update delete getmore command dirty used flushes vsize   res qrw arw net_in net_out conn                time
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   243b   53.0k   27 May 31 11:23:51.552
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   297b   53.2k   27 May 31 11:23:52.554
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 1.40G 99.0M 0|0 0|0   112b   52.7k   27 May 31 11:23:53.553
2022-05-31T11:23:54.354+0530    signal 'interrupt' received; forcefully terminating




