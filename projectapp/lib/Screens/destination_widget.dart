
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/Drawer_Component/drawer_widget.dart';
import 'package:projectapp/detail-Component/card-widget.dart';
import 'package:projectapp/detail-Component/detail.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({super.key});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
 
  var img =[
    'assets/greece (1).png',
    'assets/korea.png',
    'assets/finland.jpg',
    'assets/turkey.jpg',
    'assets/netherland.jpg',
  ];
  var placeList =[
    {'title':'Kefalonia,Greece','img':'assets/kafalonia.jpg','description':'Kephallenia, is the largest of the Ionian Islands in western Greece and the 6th largest island in Greece after Crete, Euboea, Lesbos, Rhodes and Chios. ','location':'Greece, Europe'},
    {'title':'SouthKorea','img':'assets/southkorea.webp','description':'South Korea, officially the Republic of Korea, is a country in East Asia.','location':'South Korea, East Asia'},
    {'title':'Spain','img':'assets/spain.png','description':'Spain, or the Kingdom of Spain, is a country located in Southwestern Europe, with parts of its territory in the Atlantic Ocean, the Mediterranean Sea and Africa.','location':'Spain, Europe'},
    {'title':'Japan Street','img':'assets/japan.street.jpg','description':'Japan is an island country in East Asia. It is in the northwest Pacific Ocean and is bordered on the west by the Sea of Japan.','location':'Japan, Asia'},
    {'title':'Cappdocia,Turkey','img':'assets/turkey.jpg','description':'Cappadocia is a historical region in Central Anatolia, Turkey. It is largely in the provinces of Nevşehir, Kayseri, Aksaray, Kırşehir, Sivas and Niğde','location':'Turkey, Europe and Asia'},
    {'title':'Singapore','img':'assets/singapore.jpg','description':'Singapore, officially the Republic of Singapore, is an island country and city-state in maritime Southeast Asia.','location':'Singapore, Asia'}
    ];
  var currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Discover',
          style: TextStyle(
              color: Colors.black, fontSize: 35, fontWeight: FontWeight.w600),
        ),
        actions: const [
         Icon(Icons.search),
         SizedBox(width: 10,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider( options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              onPageChanged: (index ,reason){
                setState(() {
                  currentIndex=index;
                });
              }
              ),
            items:img.map((e){
              return Builder(builder: (BuildContext context){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(img[currentIndex],fit: BoxFit.cover,),
                                );
              });
            }) .toList(),
            
            ),
            const SizedBox(height: 10,),
            AnimatedSmoothIndicator(activeIndex: currentIndex, 
            count: img.length,
            effect: const WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              spacing: 5,
              dotColor: Colors.grey,
              activeDotColor: Colors.blue,
              paintStyle: PaintingStyle.fill
            ),),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Recommended',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Veiw All'),
                ),
              ],
            ),
           
           SizedBox(height: MediaQuery.of(context).size.height*.51,

             child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: placeList.length,
               itemBuilder:(BuildContext context, index) {
                 return Cards(
                 title: placeList[index]['title'].toString(),
                 img: placeList[index]['img'].toString(),
                 descreption: placeList[index]['description'].toString(),
                 location: placeList[index]['location'].toString(),
                 ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(title: placeList[index]['title'].toString(), img: placeList[index]['img'].toString(), description: placeList[index]['description'].toString(),location: placeList[index]['location'].toString(),)));
                 },
                 );
               }),
           ) 
          ],
          
        ),
      ),
       drawer: const DrawerScreen(),
    );
  }
}

