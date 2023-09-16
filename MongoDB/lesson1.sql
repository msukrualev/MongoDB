test> use shop
switched to db shop
shop> db.products.insertOne({name : "A Book", age : 12.99})
{
  acknowledged: true,
  insertedId: ObjectId("64ad53afa95c65048b31f991")
}
shop> db.products.find()
[
  {
    _id: ObjectId("64ad53afa95c65048b31f991"),
    name: 'A Book',
    age: 12.99
  }
]
shop> db.products.find().pretty()
[
  {
    _id: ObjectId("64ad53afa95c65048b31f991"),
    name: 'A Book',
    age: 12.99
  }
]
shop> db.products.insertOne({name : "A T-Shirt", age : 29.99, description: "Very Expensive"}) 
{
  acknowledged: true,
  insertedId: ObjectId("64ad54a0a95c65048b31f992")
}
shop> db.products.find().pretty()
[
  {
    _id: ObjectId("64ad53afa95c65048b31f991"),
    name: 'A Book',
    age: 12.99
  },
  {
    _id: ObjectId("64ad54a0a95c65048b31f992"),
    name: 'A T-Shirt',
    age: 29.99,
    description: 'Very Expensive'
  }
]
shop> db.products.insertOne({name : "A Computer", age : 1229.99, description: "High Quality", details : {cpu : "Intel i7", memory : 32}})
{
  acknowledged: true,
  insertedId: ObjectId("64ad551aa95c65048b31f993")
}
shop> db.products.find().pretty()
[
  {
    _id: ObjectId("64ad53afa95c65048b31f991"),
    name: 'A Book',
    age: 12.99
  },
  {
    _id: ObjectId("64ad54a0a95c65048b31f992"),
    name: 'A T-Shirt',
    age: 29.99,
    description: 'Very Expensive'
  },
  {
    _id: ObjectId("64ad551aa95c65048b31f993"),
    name: 'A Computer',
    age: 1229.99,
    description: 'High Quality',
    details: { cpu: 'Intel i7', memory: 32 }
  }
]