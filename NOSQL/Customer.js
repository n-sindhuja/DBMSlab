db.createCollection("Customers")

db.Customers.insertMany([
  { Cust_id: 101, Acc_Bal: 500,  Acc_Type: "Z" },
  { Cust_id: 101, Acc_Bal: 800,  Acc_Type: "Z" },
  { Cust_id: 102, Acc_Bal: 300,  Acc_Type: "A" },
  { Cust_id: 102, Acc_Bal: 700,  Acc_Type: "Z" },
  { Cust_id: 103, Acc_Bal: 1500, Acc_Type: "Z" }
])

db.Customers.aggregate([{$match: { Acc_Type: "Z" } },
{$group: {_id:"$Cust_id",TotalBalance: { $sum: "$Acc_Bal"}}}, {$match:{TotalBalance:{$gt:1200 } } }])

db.Customers.aggregate([{ $group: { _id: "$Cust_id",MinBalance: { $min: "$Acc_Bal"},
MaxBalance:{ $max: "$Acc_Bal" }}}])

db.Customers.drop()
