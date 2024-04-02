
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
 FocusNode location = FocusNode();
 FocusNode startDate = FocusNode();
 FocusNode endDate = FocusNode();
 var airChecked = false;
 var trainChecked = false;
 var busChecked = false;
 var otherChecked = false;
 var hotelChecked = false;
 var friendChecked= false;
 var bussinessChecked= false;
 var vacationChecked= false;
 var bothChecked= false;
 
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(
        
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/flight.gif',),
        ),
        automaticallyImplyLeading: false,
      title: const Center(child: Text('Location',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600),)),
      actions: [
        Image.asset('assets/locationlogo.jpg')
      ],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text('Add a New Trip',style: TextStyle(color: Colors.black,fontStyle:FontStyle.italic,fontWeight: FontWeight.w600,fontSize: 18),),
               const SizedBox(height: 18,),
                   TextField(
                    focusNode: location,
                     decoration:const InputDecoration(
                       labelText: 'Enter a Location',
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black)
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.blue)
                       ),
                      
                     ),
                     onSubmitted: (value) {
                       FocusScope.of(context).requestFocus(startDate);
                     },
                   ),
                 const SizedBox(height: 10,),
                   Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      focusNode: startDate,
                      keyboardType: TextInputType.phone,
                      decoration:const InputDecoration(
                        labelText: 'Start Date',
                         enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black)
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.blue)
                       ),
                      ),
                      onSubmitted: (value) {
                        FocusScope.of(context).requestFocus(endDate);
                      },
                    )
                  ],
                ),
              ),
             const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      focusNode: endDate,keyboardType: TextInputType.phone,
                      decoration:const InputDecoration(
                        labelText: 'End Date',
                         enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black)
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.blue)
                       ),
                      ),
                    ),
                  ],
                ),
              ),   
            ],
          ),  
          const SizedBox(height: 10,),
           const Text('Travel Mode',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: airChecked, onChanged: (i){
                            airChecked=!airChecked;
                            setState(() {
                              
                            });
                          }),
                          const Text('Air',style: TextStyle(color: Colors.black),),
            
                           Checkbox(value: trainChecked, onChanged: (i){
                            trainChecked=!trainChecked;
                            setState(() {
                              
                            });
                          }),
                          const Text('Train',style: TextStyle(color: Colors.black)),
                           Checkbox(value: busChecked, onChanged: (i){
                            busChecked=!busChecked;
                            setState(() {
                              
                            });
                          }),
                          const Text('Car',style: TextStyle(color: Colors.black))
                        ],
                      ), 
                      const SizedBox(height: 10,),
          const Text('Your Stay',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: otherChecked, onChanged: (i){
                            otherChecked=!otherChecked;
                            setState(() {
                              
                            });
                          }),
                          const Text('Othher',style: TextStyle(color: Colors.black,fontSize: 12),),
                           Checkbox(value: hotelChecked, onChanged: (i){
                            hotelChecked=!hotelChecked;
                            setState(() {
                              
                            });
                          }),
                          const Text('Hotel',style: TextStyle(color: Colors.black,fontSize: 12)),
                           Checkbox(value: friendChecked, onChanged: (i){
                            friendChecked=!friendChecked;
                            setState(() {
                              
                            });
                          }),
                          const Text('Friend',style: TextStyle(color: Colors.black,fontSize: 12))
                        ],
                      ),  
                      const SizedBox(height: 20,),
           const Text('Travel For',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: bussinessChecked, onChanged: (i){
                            bussinessChecked=!bussinessChecked;
                            setState(() {
                              
                            });
                          }),
                       const Text('Business',style: TextStyle(color: Colors.black,fontSize: 10 ),),
                           Checkbox(value: vacationChecked, onChanged: (i){
                            vacationChecked=!vacationChecked;
                            setState(() {
                              
                            });
                          }),
                        const Text('Vacation',style: TextStyle(color: Colors.black,fontSize: 10 )),
                           Checkbox(value: bothChecked, onChanged: (i){
                            bothChecked=!bothChecked;
                            setState(() {
                              
                            });
                          }),
                          const Text('Both',style: TextStyle(color: Colors.black,fontSize: 10 ))
                        ],
                      ),
                         const SizedBox(height: 25,) ,
                        Center(
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            
                          });
                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all( Colors.blue)),

                        child: const Text('Save Trip',style: TextStyle(color: Colors.white),)),
                      )     
              ],
            ), 
          ),
      ),
      
    );
  }
}