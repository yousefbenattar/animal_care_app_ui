class Category {
  String img ;
  String name ;
  Category({required this.name,required this.img});
}

List<Category> datalist = [
  Category(name:"All", img: "assets/1.png"),
  Category(name:"Cats",img:"assets/2.png"),
  Category(name:"Dogs",img:"assets/3.png"),
];

class Pet {
String name ;
String img ;
String breed ;
double age ;
Pet({required this.name,required this.img,required this.breed,required this.age});
}

List<Pet> petlist = [
  Pet(name: "Pet 1", img: "assets/1.png", breed: "breed 1", age: 1),
  Pet(name: "Pet 2", img: "assets/2.png", breed: "breed 2", age: 2.5),
  Pet(name: "Pet 3", img: "assets/3.png", breed: "breed 3", age: 4),
  Pet(name: "Pet 4", img: "assets/4.png", breed: "breed 4", age: 5),
  Pet(name: "Pet 5", img: "assets/5.png", breed: "breed 5", age: 2.5),
  Pet(name: "Pet 6", img: "assets/6.png", breed: "breed 6", age: 1),
  Pet(name: "Pet 7", img: "assets/7.png", breed: "breed 7", age: 4.5),
  Pet(name: "Pet 8", img: "assets/8.png", breed: "breed 8", age: 3),
];