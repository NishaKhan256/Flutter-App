import 'package:flutter/material.dart';

class AlbumImages extends StatelessWidget {
   AlbumImages({
    super.key,
  });
  var albumImg =[
   {'img':'assets/travel1.jpg'},
   {'img':'assets/travel2.png'},
   {'img':'assets/travel3.jpg'},
   {'img':'assets/travel4.jpg'},
   {'img':'assets/travel5.jpg'},
   {'img':'assets/travel6.jpg'},
   {'img':'assets/travel7.webp'},
   {'img':'assets/travel8.jpg'},
   
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Expanded(
              child: Card(
                elevation: 20,
                child: Container(
                  // height:150,
                  // width: 180,
                   height: MediaQuery.of(context).size.height *.23,
                  width:  MediaQuery.of(context).size.width*.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.black12,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    
                    child: Stack(
                      children: [
                      Align(alignment: Alignment.topRight,
                     child: Container(
                       width: MediaQuery.of(context).size.width*.2,
                      height: MediaQuery.of(context).size.height*.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(image:AssetImage(albumImg[0]['img'].toString()),
                        )
                      ),
                     ),
                        ),
                       Align(alignment: Alignment.topLeft,
                       child: Container(
                      width: MediaQuery.of(context).size.width*.2,
                      height: MediaQuery.of(context).size.height*.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(image:AssetImage(albumImg[1]['img'].toString()),
                        )
                      ),  ),
                      ),
                        Align(alignment: Alignment.bottomRight,
                       child: Container(
                      width: MediaQuery.of(context).size.width*.2,
                      height: MediaQuery.of(context).size.height*.1,
                         decoration: BoxDecoration(
                        image: DecorationImage(image:AssetImage(albumImg[2]['img'].toString()),
                        )
                      ),
                       ),
                        ),
                        Align(alignment: Alignment.bottomLeft,
                       child: Container(
                        
                      width: MediaQuery.of(context).size.width*.2,
                      height: MediaQuery.of(context).size.height*.1,
                         decoration: BoxDecoration(
                        image: DecorationImage(image:AssetImage(albumImg[3]['img'].toString()),
                        )
                      ),   
                    ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Card(
              elevation: 20,
              child: Container(
                // height:150,
                // width: 180,
                 height: MediaQuery.of(context).size.height *.23,
                 width:  MediaQuery.of(context).size.width*.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  
                  child: Stack(
                    children: [
                    Align(alignment: Alignment.topRight,
                   child: Container(
                     width: MediaQuery.of(context).size.width*.2,
                    height: MediaQuery.of(context).size.height*.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage(albumImg[4]['img'].toString()),
                      )
                    ),
                   ),
                      ),
                     Align(alignment: Alignment.topLeft,
                     child: Container(
                    width: MediaQuery.of(context).size.width*.2,
                    height: MediaQuery.of(context).size.height*.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage(albumImg[5]['img'].toString()),
                      )
                    ),                             ),
                      ),
                      Align(alignment: Alignment.bottomRight,
                     child: Container(
                    width: MediaQuery.of(context).size.width*.2,
                    height: MediaQuery.of(context).size.height*.1,
                       decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage(albumImg[6]['img'].toString()),
                      )
                    ),
                     ),
                      ),
                      Align(alignment: Alignment.bottomLeft,
                     child: Container(
                    width: MediaQuery.of(context).size.width*.2,
                    height: MediaQuery.of(context).size.height*.1,
                       decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage(albumImg[7]['img'].toString()),
                      )
                    ),   
                  ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}