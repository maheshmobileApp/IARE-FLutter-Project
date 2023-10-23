import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget{
  const FeedScreen({super.key,required this.newsimage,required this.title,required this.derscription});
final String newsimage;
final String title;
final String derscription;
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
      backgroundColor: Colors.white,
      body:PageView(
        scrollDirection: Axis.vertical,
        physics:const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black)
              ),
            const SizedBox(height:20),
              Text(
                derscription,
                maxLines: 8,
                style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.7))
              ),
                   ]),
          ),]
      )),
   );
  }
}