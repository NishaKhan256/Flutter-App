import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool switchVal1 =false;
  bool switchVal2 =false;
  bool switchVal3 =false;
  bool switchVal4 =false;
  bool switchVal5 =false;
  bool switchVal6 =false;
  bool switchVal7 =false;
  bool switchVal8 =false;

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
                    ),const SizedBox(width: 60,),
                const Text('Notifiction',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                  ],
                ),
              ),
                   const Icon(Icons.notifications_active,size: 30,color: Colors.amber,)
            ],
           )
           ),
           const SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.all(10),
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SwitchListTile(
                  activeColor: Colors.green,
                  value: switchVal1, 
                  onChanged: (bool? value){
                    setState(() {
                      switchVal1 = value!;
                    });
                  },
                  title:const Text('Show notifications',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                  )
                   ],
             ),
           ),
            Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     SwitchListTile(
                      activeColor: Colors.green,
                      value: switchVal2, 
                      onChanged: (bool? value){
                        setState(() {
                          switchVal2 = value!;
                        });
                      },
                      title:const Text('Floating notifications',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                      subtitle:const Text('Allow important notifications at top of the screen'),
                      )
                    ],
                  ),
                ),
            Padding(
                  padding: const EdgeInsets.all(10),
                 child: SwitchListTile(
                 activeColor: Colors.green,
                  value: switchVal3, 
                  onChanged: (bool? value){
                    setState(() {
                      switchVal3 = value!;
                    },);
                  },
                  title: const Text('Vibration',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchListTile(
                      activeColor: Colors.green,
                        value: switchVal4, 
                        onChanged: (bool? value){
                          setState(() {
                            switchVal4 = value!;
                          });
                        },
                        title:const Text('Lock screen notifications',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                        subtitle:const Text('Allow important notifications on the lock screen'),
                        )
                    ],
                  ),
                ),
                Padding(
                 padding: const EdgeInsets.all(10),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SwitchListTile(
                      activeColor: Colors.green,
                      value: switchVal5,
                       onChanged: (bool? value){
                        setState(() {
                          switchVal5 = value!;
                        });
                       },
                       title:const Text('Chat notifictions',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                       subtitle:const Text('Receive push notifications for new message',)
,
                       )
                   ],
                 ),
               ),
              
           
           Padding(
                 padding: const EdgeInsets.all(10),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SwitchListTile(
                      activeColor: Colors.green,
                      value: switchVal6, 
                      onChanged: (bool? value){
                        setState(() {
                          switchVal6 = value!;
                        });
                      },
                      title:const Text('Reactions',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                      subtitle:const Text('Receive push notifications when someone reacts to your message '),
                      )
                   ],
                 ),
               ),
            Padding(padding: const EdgeInsets.all(10),
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              SwitchListTile(
                activeColor: Colors.green,
                value: switchVal7,
                 onChanged: (bool? value){
                  setState(() {
                    switchVal7 = value!;
                  });
                 },
                title:const Text('Notifiction sounds',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle:const Text('Play sounds for new messages')
                 )
             ],
           ),
           ),
            Padding(
              padding: const EdgeInsets.all(10),
            child: SwitchListTile(
              activeColor: Colors.green,
              value: switchVal8, 
              onChanged: (bool? value){
                setState(() {
                  switchVal8 = value!;
                });
              },
              title:const Text('Notification offlight',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),

              ),
            )
           ]
           )
    );
  }
}

