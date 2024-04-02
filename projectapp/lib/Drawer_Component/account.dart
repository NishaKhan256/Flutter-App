import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   ListView(
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
           height: 180,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    IconButton(onPressed: ()=>Navigator.pop(context), 
                    icon: const Icon(Icons.arrow_back_ios),
                    iconSize: 30,color: Colors.white,
                    ),const SizedBox(width: 80,),
                const Text('Account',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                  ],
                ),
              ),
                   const Icon(Icons.person,size: 30,color: Colors.white,)
            ],
           )),
           const SizedBox(height: 20,),
           const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.security),
                    SizedBox(width: 15,),
                    Text('Security & Privacy',style: TextStyle(color:Colors.black),)
                    
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.key),
                    SizedBox(width: 15,),
                    Text('Passkeys',style: TextStyle(color:Colors.black),)
                    
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 15,),
                    Text('Email address',style: TextStyle(color:Colors.black),)
                    
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.person_add_alt_1),
                    SizedBox(width: 15,),
                    Text('Add account',style: TextStyle(color:Colors.black),)
                    
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.delete),
                    SizedBox(width: 15,),
                    Text('Delete account',style: TextStyle(color:Colors.black),)
                    
                  ],
                ),
              )
            ],
           )
          ]),
    );
  }
}