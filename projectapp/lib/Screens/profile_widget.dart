import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/profile-images/album_widget.dart';
import 'package:image_picker/image_picker.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String imagePath = '', imageName, imageUrl;
  bool loading = false;

  cameraImagePicker()async{
    final ImagePicker _picker = ImagePicker();

    final _image = await _picker.pickImage(source: ImageSource.camera);
    print(_image!.path);
    setState(() {
      imagePath =_image.path;
      imageName= _image.name;
    });
    Navigator.pop(context);
showDialog(
        context: context,
        builder: (context){
          return 
     AlertDialog(
                         title: imagePath == '' || imagePath.isEmpty
                           ? const Text('')
                           : Image.file(
                           File(imagePath),
                           width: 100,
                           ),
                           actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(onPressed: (){
                        imageUpload();
                       }, child:const Text('Upload')),
                      const SizedBox(width: 10,),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const ProfileScreen()));
                       }, child:const Text('Cancel'))
                              ],
                            )
                           ],
                           );});
  }

  galleryImagePicker()async{
    final ImagePicker _picker = ImagePicker();

    final _image = await _picker.pickImage(source: ImageSource.gallery);
    print(_image!.path);
    setState(() {
      imagePath =_image.path;
      imageName= _image.name;
    });
    showDialog(
        context: context,
        builder: (context){
          return 
     AlertDialog(
                         title: imagePath == '' || imagePath.isEmpty
                           ? const Text('')
                           : Image.file(
                           File(imagePath),
                           width: 100,
                           ),
                           actions:  [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                       TextButton(onPressed: (){
                        imageUpload();
                       }, child:const Text('Upload')),
                      const SizedBox(width: 10,),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const ProfileScreen()));
                       }, child:const Text('Cancel'))
                              ],
                            )
                           ],
                           );});
  }

  imageUpload()async{
    setState(() {
      loading = true;
    });

    File file = File(imagePath);
    final storageRef = FirebaseStorage.instance.ref();
    final imageRef = storageRef.child('image/$imageName');

    await imageRef.putFile(file).then((p) async{
      imageUrl = await imageRef.getDownloadURL();
      debugPrint('image uploaded $imageUrl');
      setState(() {
        loading = false;
      });
    }).catchError((onError){
      setState(() {
        loading = false;
      });
      debugPrint(onError);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
           children: [
            Container(
              color: Colors.blue[600],
              height:MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Padding(
                      padding:  EdgeInsets.only(top: 50),
                      child: Row(children: [
                        CircleAvatar(radius: 30,backgroundColor: Colors.white,),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Text('User Name',style:TextStyle(color: Colors.white),),
                            Text('email@gmail.com',style:TextStyle(color: Colors.white),),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.edit,color: Colors.white,)
                      ],)
                    ),
                   
                    const SizedBox(height: 25,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           const Column(
                            children: [
                              Text('10.2K',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10
                                ),),
                                Text('Followers',
                              style: TextStyle(
                                color: Colors.white,
                                ),)
                            ],
                           ),
                        const SizedBox(width: 15,),
                           const Column(
                            children: [
                              Text('250',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10
                                ),),
                                Text('Following',
                              style: TextStyle(
                                color: Colors.white,
                                ),)
                            ],
                           ),
                          //  imagePath == '' || imagePath.isEmpty
                          //  ? const Text('')
                          //  : Image.file(
                          //  File(imagePath),
                          //  width: 100,
                          //  ),
                    
                           Padding(
                             padding:const EdgeInsets.all(5),
                             
                             child: TextButton(onPressed: (){
                               showModalBottomSheet(context: context, builder: (BuildContext context){
                                 return SizedBox(
                                   height: 200,
                                   child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                      TextButton(onPressed: (){
                                        galleryImagePicker();
                                      }, child:const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.photo_library_outlined),
                                           Text('Gallery'),
                                        ],
                                      )),
                                    const  SizedBox(height: 20,),
                                      TextButton(onPressed: (){
                                        cameraImagePicker();
                                      
                                      }, child:const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.camera_alt),
                                           Text('Camera'),
                                        ],
                                      )),
                                      
                                     ],
                                   ),
                                 );
                               });
                                 
                             },
                               child: const Text('Edit Profile',style: TextStyle(
                                 color: Colors.white,fontSize: 10
                               ),),
                             ),
                           ),
                        
                        ],
                      )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))
                ),
                child: Column(
                  children: [
                  const Text('My Album',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                    const SizedBox(height: 25,),
                  const  Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Text('Best Trip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
                                ),
                              ],
                            ),
                    AlbumImages(),
                   const  SizedBox(height: 25,),
                        const  Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('Hill Lake Tourism',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
                              ),
                            ],
                          ),
                           AlbumImages()
                  ],
                ),
              ),
            ),
           ],
          ),
        ],
      ),
    ),
    );
  }

 
  
}

