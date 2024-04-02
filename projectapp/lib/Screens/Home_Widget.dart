import 'package:flutter/material.dart';
import 'package:projectapp/Screens/Login_widget.dart';

class HomeScreen extends StatefulWidget{
const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
@override
Widget build(BuildContext context){
  return Scaffold(
    body:Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/home.jpg'),fit: BoxFit.fitHeight)
      ),
       child: SingleChildScrollView(
         child: Column(
          children: [
         const Padding(
              padding: EdgeInsets.all(20),
              child: Text(' Tourist Trail ',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black,fontSize: 30,),),
            ),
           const Padding(
             padding: EdgeInsets.all(15),
             child: Text('Travel is the only purchase that enriches you in ways beyond material wealth',
              style:TextStyle(color: Colors.black) ,),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*.6,),
            Center(
              child: SizedBox(
                 width: MediaQuery.of(context).size.width*.65,
                child: ElevatedButton(onPressed: (){
                  setState(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  });
                },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                 child: const Text('GET START',style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            )
          ],
         ),
       ),
       
    ),
  );
}
}