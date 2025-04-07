// DATA_TYPES

// 2.NON_PRIMITIVE_DATATYPE

// i.Array
// ii.Object

// i.Array

// Homogenouse data(same data)

var Names=['vamsi','chandu','vali','babu']

console.log(Names);

// how to get induvidual vale to index position

console.log(Names[0]);
console.log(Names[1]);
console.log(Names[2]);
console.log(Names[3]);

// index position is 4 outof range so it showing  undefined keyword

console.log(Names[4]);     

// how to get length given array by using length function

console.log(Names.length)


// Hetro_genouse data(different data)

// example 1.
var values=[10,'mahi','true','4+5j', 5.78, null,undefined,]

console.log(values)
console.log(values.length)

// example 2.

var apple ="apple"
var banana = "banana"
var mango  ="mango"

var A=[ 10,20,30,40,apple,banana,mango, undefined, 'vamsi',null,false,['vamsi','12','true'],10,[10,20,30,40,50,60,70,]]

console.log(A)

console.log(A.length)



// ii.OBJECT DATA_TYPE

// It is a key valu pair

var customer_deatails =
{
    Name : "charlie",
    Age :  25,
    Location: 'Banglore',
    Email : "charlie@",
    phno : 2345688765,
    
}
console.log(customer_deatails)

// To access individual iteam by using dot (.) operator and  off [] operator

console.log(customer_deatails.Name)
console.log(customer_deatails.Age)
console.log(customer_deatails.Location)
console.log(customer_deatails.Email)
console.log(customer_deatails.phno)


console.log(customer_deatails["Name"])
console.log(customer_deatails["Age"])
console.log(customer_deatails["Location"])
console.log(customer_deatails["Email"])
console.log(customer_deatails["phno"])