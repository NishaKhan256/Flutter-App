import 'package:flutter/material.dart';
import 'package:projectapp/Drawer_Component/account.dart';
import 'package:projectapp/Drawer_Component/notifiction_widget.dart';
import 'package:projectapp/Screens/Login_widget.dart';
import 'package:projectapp/navigation_widiget.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({
    super.key,
  });

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: ListView(
       children: [
         Container(
           decoration: const BoxDecoration(
             gradient: LinearGradient(colors: [
               Color.fromARGB(255, 34, 170, 224),
               Color.fromARGB(255, 52, 135, 204),
               Color.fromARGB(255, 80, 193, 231),
             ]),
             borderRadius: BorderRadius.only(bottomRight:Radius.circular(40)),
           ),
           height: 200,
           padding: const EdgeInsets.all(10),
           
           child: const Column(
             children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Icon(Icons.notes,color: Colors.white,size: 25,),
                   SizedBox(width: 30,),
                   Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                   
                 ],
               ),
               // SizedBox(height: 20,),
               ListTile(
                 leading: CircleAvatar(radius: 30,backgroundColor: Colors.white,),
                 title: Text('Nisha',style: TextStyle(color: Colors.white,fontSize: 10),),
                 subtitle: Text('email@gmail.com',style: TextStyle(color: Colors.white,fontSize: 10),),
                 trailing: Icon(Icons.edit,color: Colors.white,size: 20,)
               ),
             ],
           ),
         ),
          Padding(
           padding: const EdgeInsets.all(20),
           child: InkWell(
             onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountScreen()));
             },
             child: const Row(
               children: [
                 Icon(Icons.person_pin,color: Colors.blue,),
                 SizedBox(width: 8,),
                 Text('Account'),
                 Spacer(),
                 Icon(Icons.arrow_right)
               ],
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(20),
           child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
            },
            child:  const Row(
             children: [
               Icon(Icons.circle_notifications_sharp,color: Colors.amber),
               SizedBox(width: 8,),
               Text('Notifications'),
               Spacer(),
               Icon(Icons.arrow_right)
             ],
           ),
           )
          
         ),
          Padding(
           padding: const EdgeInsets.all(20),
           child: InkWell(
             onTap: (){},
             child: const Row(
               children: [
                 Icon(Icons.face,color: Color.fromARGB(255, 160, 56, 90)),
                 SizedBox(width: 8,),
                 Text('Support'),
                 Spacer(),
                 Icon(Icons.arrow_right)
               ],
             ),
           ),
         ),
          Padding(
           padding: const EdgeInsets.all(20),
           child: InkWell(
             onTap: (){},
             child: const Row(
               children: [
                 Icon(Icons.share,color: Color.fromARGB(255, 13, 135, 157),),
                 SizedBox(width: 8,),
                 Text('Share'),
                 Spacer(),
                 Icon(Icons.arrow_right)
               ],
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(20),
           child: InkWell(
             onTap: (){
              
             },
             child: const Row(
               children: [
                 Icon(Icons.language,color:Colors.blue),
                 SizedBox(width: 8,),
                 Text('Language'),
                 Spacer(),
                 Icon(Icons.arrow_right)
               ],
             ),
           ),
         ), 
         Padding(
           padding: const EdgeInsets.all(20),
           child: InkWell(
             onTap: (){
             showDialog(
              context: context,
              builder: (context){
              return AlertDialog(
                  title:Center(child: Text('Loggin Out',style: TextStyle(fontSize: 15),)),
                  actions: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                        }, child:const Text('Yes')),
                        TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomBar()));
                        }, child:const Text('No')),
                
                      ],
                    )
                  ],
                );
              }
             );
             },
             child: const Row(
               children: [
                 Icon(Icons.logout),
                 SizedBox(width: 8,),
                 Text('Log out'),
                 Spacer(),
                 Icon(Icons.arrow_right),
                
               ],
             ),
           ),
         )
       ],
     ),
     
          );
  }
}
