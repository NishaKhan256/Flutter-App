import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
   const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
var place =[
{'name':'Raja Ampat, Indonesia','img':'assets/rajaampatindo.png'},
{'name':' China','img':'assets/china.jpg'},
{'name':'Switzerland','img':'assets/switzerland.jpg'},
{'name':'Island, Greece','img':'assets/greece (2).png'},
{'name':'Finland','img':'assets/finland.jpg'},
{'name':'Avithose,  Greece','img':'assets/avithose.greece.jpg'},

];
var category=[
  'Best Places',
  'Most Visited',
  'New Added',
  'Hotels',
  'Restaurants'
];
 
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              const Text('Where To Next ?',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Color.fromARGB(255, 246, 240, 240),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                  
                ),
              ),
                const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Trending Destinations',style: TextStyle(color: Colors.black,fontSize: 15      ,fontWeight: FontWeight.w600)),
                   Spacer(),
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Text('Veiw All'),
                   ),
                  ],
                ),
                 ),
                SafeArea(child: Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: SizedBox(
                            height: 230,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index){
                              return InkWell(
                                onTap: (){},
                                child: Container(
                                  width: 170,
                                  padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.only(left: 15,right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(image: 
                                    AssetImage(place[index]['img'].toString()),
                                    fit: BoxFit.cover,
                                    opacity: 0.7)
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: const Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                          size: 30,
                                          ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(place[index]['name'].toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          // fontSize: 18,
                                          fontWeight: FontWeight.w600
                                        ),),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                          )),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding:const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              for(int i=0; i < 5; i++)
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                    )
                                  ]
                                ),
                                child: Text(category[i],
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),),
                              )
                            ],
                          ),  
                        ),
                      ),
                      const SizedBox(height: 10,),
                      GridView.builder(
                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, index){
                        return Padding(padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image: AssetImage(place[index]['img'].toString()),
                                  fit: BoxFit.cover,opacity: 0.7)
                                ),
                              ),
                            ),
                            Padding(
                              padding:const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(place[index]['name'].toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),),
                                  const Icon(Icons.more_vert,size:25 ,)
                                ],
                              ), 
                              ),
                                 const SizedBox(height: 5,),
                                 const Row(
                                  children: [
                                    Icon(Icons.star,
                                    color: Colors.amber,
                                    size: 20,),
                                    Text('4.4',style: TextStyle(fontWeight: FontWeight.w500),)
                                  ],
                                 )
                          ],
                        ),
                        );
                      })
                    ],
                  ),
                ),)
                )
            ],
          ),
        ),
      ),
    );
  }
}