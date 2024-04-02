import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  String title, description,img,location;
   DetailScreen({super.key,
   required this.title,
   required this.img,
   required this.description,
   required this.location});

   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                   Container(
                           height: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30.0),
                           boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0
                    )
                           ],
                         ),
                         child: ClipRRect(
                           borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight: Radius.circular(30)),
                           child: Image(image: AssetImage(img),fit: BoxFit.cover,)),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 18),
                     child: Row(
                      children: [
                        IconButton(onPressed: ()=>Navigator.pop(context), 
                        icon: const Icon(Icons.arrow_back_ios),
                        iconSize: 30,color: Colors.white,
                        )
                      ],
                     ),
                   ),
                 ],
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(title,style:
                    const TextStyle(fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,),),
                   Row(children: [const Icon(Icons.location_on,color: Colors.black26,),
                             Text(location,style: const TextStyle(color: Colors.black,fontSize: 15),)],),
                             const Row(children: [
                              Icon(Icons.star,color: Colors.amber,size: 15),
                              Icon(Icons.star,color: Colors.amber,size: 15),
                              Icon(Icons.star,color: Colors.amber,size: 15),
                              Icon(Icons.star,color: Colors.amber,size: 15),
                              Icon(Icons.star,color: Colors.black26,size: 15),
                              Icon(Icons.star,color: Colors.black26,size: 15),
                             ],)
                 ],
               ),
             ),
            Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Description :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
            Text(description),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 58, 155, 225))),
              onPressed: (){
              }, child: const Text('Book Now',style: TextStyle(color: Colors.white),))
          ],
        ),
            )
          ],
        ),
      ),
    );
  }
}
 