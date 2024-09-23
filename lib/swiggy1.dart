import 'package:exam_29_09_2024/database.dart';
import 'package:flutter/material.dart';

class SwiggyScreen extends StatelessWidget {
  const SwiggyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [Row(
            children: [
              Icon(Icons.label_important_outline_rounded,color: Colors.orange,),
              Text("21",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Icon(Icons.arrow_drop_down),
              Spacer(),
            Container(
                height: 25,
                width: 30,
                child: Image.asset('assets/images/buy one.jpg'),
                
              ),
              Icon(Icons.person_pin,size: 30,)
              
            
              
            ],
          ),
          SizedBox(height: 1,),
          Row(
            children: [
              Text("Iyyattil Junction,Kochi,Ernakulam,ker...",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),),
              Spacer(),
              
            ],
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
          
            child: Container(height: 35,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            
            width: double.infinity,
            child: Row(
              children: [
                
                Text("Search for  ",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Biriyani",style: TextStyle(color: Colors.grey,fontSize: 12),),
                Spacer(),
                Icon(Icons.search),
                Text(" | "),
                Icon(Icons.mic_rounded,color: Colors.orange[800],),
              ],
            ),  
            ),
          
            
          ),
          SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/party.png",height: 50,width: 50,),
              Text("Welcome Meera",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 20),),
              Text("Enjoy 10 Free Deliveries with OneLite",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 15,),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2),
              itemCount: 4,
               itemBuilder: (BuildContext context,int index){
            return Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(Database.gridList[index]["t1"],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 17),),
                    
                  ),
                  
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: Text(Database.gridList[index]["t2"],style: TextStyle(fontSize: 15,color: Colors.grey))),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Text(Database.gridList[index]["t3"],style: TextStyle(fontSize: 12,color: Colors.orange[800]),)),
                    Positioned(
                      top: 50,
                      left: 20,
                      child:CircleAvatar(
                        radius: 100,
                        foregroundImage: AssetImage(Database.gridList[index]["image"]),
                      )
              
                       
                    )
              ],
            );
                
               }),
          )

        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.pin_drop_rounded),label: "Swiggy"),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank),label: "Food"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "Instamart"),
          BottomNavigationBarItem(icon: Icon(Icons.dinner_dining_sharp),label: "Dineout"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout_outlined),label: "Reorder"),
           BottomNavigationBarItem(icon: Icon(Icons.crop_square),label: "Genie"),

      ]
      ),
    );
    
  }
}