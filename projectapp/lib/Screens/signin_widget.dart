
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/Screens/Login_widget.dart';
import 'package:projectapp/navigation_widiget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}
creatAccount(BuildContext context)async{
  final credential = FirebaseAuth.instance;
  credential.createUserWithEmailAndPassword(email:email.text, password: password.text)
  .then((user) async{
    debugPrint('Created Successfully');

    DatabaseReference ref=FirebaseDatabase.instance.ref('users/${user.user!.uid}');
    await ref.set({
      'uid': user.user!.uid,
      'firstname': firstName.text,
      'lastname': lastName.text,
      'email': email.text,
    });
    debugPrint(user.user!.email);
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomBar()));
  } ).catchError((e){
 debugPrint(e.toString());
  });
 }

 TextEditingController email =TextEditingController();
 TextEditingController firstName= TextEditingController();
 TextEditingController lastName =TextEditingController();
 TextEditingController password = TextEditingController();

  FocusNode firstname = FocusNode();
  FocusNode lastname=FocusNode();
  FocusNode Email=FocusNode();
  FocusNode Password =FocusNode();
  FocusNode repeatpassword=FocusNode();
  
  var showPassword =true;
  var checkbox =false;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
               const Center(child: Text('CREATE ACCOUNT',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)),
                 const SizedBox(height: 30,),
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: TextField(
                    controller: firstName,
                    focusNode: firstname,
                    decoration: const InputDecoration(
                   contentPadding: EdgeInsets.all(10),
                        labelText: 'First Name',
                          suffixIcon: Icon(Icons.edit),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onSubmitted: (v) {
                          FocusScope.of(context).requestFocus(lastname);
                        },
                   ),
                 ),
                  Padding(
                   padding: const EdgeInsets.all(10),
                   child: TextField(
                    controller: lastName,
                    focusNode: lastname,
                    decoration: const InputDecoration(
                       contentPadding: EdgeInsets.all(10),
                          labelText: 'Last Name',
                          suffixIcon: Icon(Icons.edit),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onSubmitted: (v) {
                          FocusScope.of(context).requestFocus(Email);
                        },
                   ),
                 ),
                  Padding(
                   padding: const EdgeInsets.all(10),
                   child: TextField(
                    controller: email,
                    focusNode: Email,
                    decoration: const InputDecoration(
                       contentPadding: EdgeInsets.all(10),
                          labelText: 'Email',
                          suffixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onSubmitted: (v) {
                          FocusScope.of(context).requestFocus(Password);
                        },
                   ),
                 ),
                  Padding(
                   padding: const EdgeInsets.all(10),
                   child: TextField(
                    controller: password,
                    focusNode: Password,
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      contentPadding:const EdgeInsets.all(10),
                          labelText: 'Password',
                            suffix: IconButton(
                              onPressed: () {
                                  print(showPassword);
                                showPassword = !showPassword;
                                setState(() {
                                });
                              },
                              icon: Icon(showPassword
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined)),
                          enabledBorder:const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          errorBorder:const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)
                          ),
                          focusedBorder:const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onSubmitted: (v) {
                          FocusScope.of(context).requestFocus(repeatpassword);
                        },
                   ),
                 ),
                  Padding(
                   padding: const EdgeInsets.all(10),
                   child: TextField(
                    focusNode: repeatpassword,
                    obscureText: showPassword,
                    decoration:  InputDecoration(
                       contentPadding:const EdgeInsets.all(10),
                          labelText: 'Confirm Your Password',
                           suffix: IconButton(
                              onPressed: () {
                                   debugPrint(showPassword.toString());
                                showPassword = !showPassword;
                                setState(() {
                                });
                              },
                              icon: Icon(showPassword
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined)),
                          enabledBorder:const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          errorBorder:const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)
                          ),
                          focusedBorder:const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                   ),
                 ),
                 SizedBox(height: 15,),
                  Row(
                      children: [
                        Checkbox(value: checkbox, onChanged: (i){
                          checkbox=!checkbox;
                          setState(() {
                            
                          });
                        }),
                   const
                    Text('I agree all statements in term of service',style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: 250,
                      height: 40,
                      child: ElevatedButton(onPressed: (){
                      creatAccount(context);
                      
                      }, 
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 10, 55, 180))),
                      child: const Text('SIGN UP',style: TextStyle(color: Colors.white),)),
                    ),
                    const SizedBox(height: 20,),
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        const Text('Have already an account ?',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                         TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                         }, 
                         child: const Text('Log in',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),)),
                       ],
                     )
            ],
          ),
        ),
       ),
    );
      }
}