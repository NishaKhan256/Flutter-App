import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
       FavoriteScreen({super.key});
  var User =[
    {'name':'Spain',"img":'assets/spain.png'},
    {'name':'Raja Ampat,Indonasia','img':'assets/rajaampat.png'},
    {'name':'South Korea',"img":'assets/southkorea.webp'},
    {'name':'Netherland',"img":'assets/netherland.jpg'},
    {'name':'Kefalonia,Greece',"img":'assets/kefalonia.greece.jpg'},
    {'name':'switzerland','img':'assets/switzerland.jpg'},
    {'name':'Japan','img':'assets/japan.jpg'},
             ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:const Text('Favorite',style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w500),),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(decoration: 
            InputDecoration(
              labelText: 'Search',
              filled: true,
              fillColor: Color.fromARGB(255, 246, 240, 240),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              )
            )),
          ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: User.length,
            itemBuilder:(context, index){
              return Card(
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(User[index]['img'].toString(),width: 150,height: 100,fit: BoxFit.cover,)),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(User[index]['name'].toString(),style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontStyle: FontStyle.italic,fontSize: 8 ),),
                          ),
                          const Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star,color: Colors.amber,size: 18,),
                            Icon(Icons.star,color: Colors.amber,size: 18),
                            Icon(Icons.star,color: Colors.amber,size: 18),
                            Icon(Icons.star,color: Colors.amber,size: 18), 
                            Icon(Icons.star,color: Colors.black26,size: 18),
                          ],
                                              ),
                        ],
                      ),
                    ),
                  const Spacer(),
                  const Icon(Icons.favorite,color: Colors.red,),
                  
                ]),
              );
            } ),
        ),
        ],
      ),
      
    );
  }
}