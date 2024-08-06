

import 'package:flutter/material.dart';
import 'package:netflix/resources_page.dart';

class MovieCustomCard extends StatelessWidget{
  String title;
  String imgurl;
  MovieCustomCard({required this.imgurl,required this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 200,
      child: Card(
        elevation: 11,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Stack(
          children: [
            Container(
              width: 300,
              color: Colors.black,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    Image.network(imgurl,fit: BoxFit.cover,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Column(
                         children: [
                           Container(
                             width: 100,
                             height: 55,

                          child: Text(title,textAlign:TextAlign.center,style: mTextStyle13(mFontColor: Colors.white),),
                           ),

                         ],
                       ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){

                                }, icon: Icon(Icons.notifications,size: 20,color: Colors.white,)),
                            Text("Remind Me",style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),),
                          ],
                        ),
                        Column(
                          children: [
                           IconButton(
                               onPressed: (){

                               }, icon: Icon(Icons.info,size: 20,color: Colors.white,)),
                            Text("Info",style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}