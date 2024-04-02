
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/Screens/signin_widget.dart';
import 'package:projectapp/navigation_widiget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

 createAcount(BuildContext context) async {
  
   try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
    email.text='';
    password.text='';
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomBar()));
  }
  on FirebaseAuthException catch (e) {
    if(e.code == 'user-not-found'){
      print('invalide email');
    }
    else if (e.code == 'wrong-password'){
      print('wrong password');
    }
  }
  catch (err){
    ScaffoldMessenger.of( context).showSnackBar(SnackBar(
      content: Text(err.toString()),
      duration:const Duration(seconds: 3)
    ));
  }
  }
 
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  var ShowPassword = true;
  FocusNode Email =FocusNode();
  FocusNode Password =FocusNode();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Center(
          child: Padding(padding:const EdgeInsets.all(10),
           child: Column(
              children: [Image.asset('assets/wellcome.png',height: 220,),
              const SizedBox(height: 20,),
              TextField(
                controller: email,
                focusNode: Email,
                 decoration: const InputDecoration(
                    labelText: 'username or email',
                    hintText: 'email@gmail.com',
                    suffix: Icon(Icons.email_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                    ),
                  ),
                  onSubmitted: (value) {
                    FocusScope.of(context).requestFocus(Password);
                  },
              ),
               const SizedBox(height: 15,),
               TextField(
                controller: password,
                focusNode: Password,
                obscureText: ShowPassword,
                 decoration: InputDecoration(
                   contentPadding:const EdgeInsets.all(10),
                      labelText: 'Password',
                      helperText: 'Forgot your Password ?',
                      suffix: IconButton(
                            onPressed: () {
                              print(ShowPassword);
                              ShowPassword = !ShowPassword;
                              setState(() {
                              });
                            },
                            icon: Icon(ShowPassword
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off_outlined)),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      )
                    ),
               ),
                  const SizedBox(height: 15,),
                   SizedBox(
                    width: 200,
                     child: ElevatedButton(onPressed: (){
                     createAcount(context);
                                       },
                                     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 12, 40, 180))),
                     child: const Text('LOGIN',style: TextStyle(color: Colors.white),)),
                   ),
                   const SizedBox(height: 10,),
                   const Text('_________OR_________'),
                   const SizedBox(height: 10,),
                   Wrap(
                    children: [
                      Container(margin:const EdgeInsets.all(2),height:30,width: 50,child: const Icon(Icons.facebook,color: Color.fromARGB(255, 1, 110, 200),size: 30,),),
                    Container(margin: const EdgeInsets.all(2),height: 30,width: 50,child: Image.asset('assets/google.logo.jpg',),),
                      Container(margin: const EdgeInsets.all(2),height: 30,width: 50,child: const Icon(Icons.apple,color: Colors.black,size: 30,),)
                    ],
                   ),
                   const SizedBox(height: 10,),
                   Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                     TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                     },
                      child: const Text('Sign up',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),))
                    ],
                   )
              ]
              )
              ),
        )
      ),
    );
  }
}