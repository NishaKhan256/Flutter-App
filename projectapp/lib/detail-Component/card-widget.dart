import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String img, title, descreption,location;
  final Function ontap;
  const Cards({super.key,
  required this.title,
  required this.img,
  required this.descreption,
  required this.location,
  required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: Card(child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(img,fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .18,),
          ),
              Text(title),
        ],
      ),),
    );
  }
}