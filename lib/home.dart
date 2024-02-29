import 'package:animal_care_app_ui/detail.dart';
import 'package:flutter/material.dart';

import 'data.dart';

Color color = const Color.fromARGB(255, 240, 133, 178);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            margin: const EdgeInsets.only(left: 15),
            child: const Text(
              'Tekee',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 15),
              child: const Icon(Icons.notifications))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 10, left: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                // color: color,
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: datalist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: color, borderRadius: BorderRadius.circular(45)),
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(datalist[index].img),
                            radius: 20,
                          ),
                          Text(
                            datalist[index].name,
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
             const Pets()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: color,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.star)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.message)),
          BottomNavigationBarItem(
              label: "", icon: Icon(Icons.account_circle_outlined)),
        ],
      ),
    );
  }
}

class Pets extends StatelessWidget {
  const Pets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: petlist.length,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
              crossAxisCount: 2),
          itemBuilder: (conext,index){
            Pet pet = petlist[index];
          return InkWell(
            
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Details(pet: pet)));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                //color: Colors.amber,
              ),
              width: 100,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image:DecorationImage(image: AssetImage(petlist[index].img),fit: BoxFit.fill)
                  ),
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.end,
                    children: [Container(
                      padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(45),
                      border: Border.all(color: Colors.grey)),
                    child: Icon(Icons.star_outline))],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0,left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(petlist[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text("${petlist[index].age.toString()} year")],),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(right: 10.0,left: 10),
                  child: Text(petlist[index].breed),
                  )
              ],),
            ),
          );
          }),
    );
  }
}
