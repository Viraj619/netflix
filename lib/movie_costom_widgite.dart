

import 'package:flutter/material.dart';
import 'package:netflix/resources_page.dart';


class MovieCostomWidgite extends StatelessWidget{
  String imgUrl;
  bool isNetflixLogo;
  bool isTop10;
  bool isNewSeason;
  bool isRecentlyAdded;
  bool isComing;

  MovieCostomWidgite({required this.imgUrl,
     this.isNetflixLogo=false,
   this.isTop10=false,
   this.isNewSeason=false,
   this.isComing=false,
  this.isRecentlyAdded=false});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:120,
      height: 250,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11)
        ),
        child: Stack(
          children: [
            /// image
            Container(
              width:150,
              height: 220,
             // color: Colors.green,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child:Image.network(imgUrl,fit: BoxFit.cover,)
              ),

              ///netflix logo
            ),
           isNetflixLogo? Positioned(
                top: 5,
                child: Image.asset('assert/icons/ic_netflix.png',width: 30,height: 20,)//Image.network("https://images.pexels.com/photos/337909/pexels-photo-337909.jpeg?auto=compress&cs=tinysrgb&w=600",width: 60,height: 30,)
            ):Container(),


           /// title for recently added
        isRecentlyAdded?Positioned(
             top:195,
              left: 7,
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5))
                ),
                child: Center(child: Text("Recently added",style: mTextStyle13(mFontColor: Colors.white),)),
              ),
            ) :Container(),


            /// title for top 10
            isTop10?Positioned(
              top: 0,
              left: 85,
              child: Container(
                width: 30,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(25))
                ),
                child: Column(
                  children: [
                    Text("Top",style: mTextStyle13(mFontColor: Colors.white),),
                    Text("10",style: mTextStyle16(mFontColor: Colors.white),)
                  ],
                ),
              ),
            ):Container(),

            /// title for new season
           isNewSeason? Positioned(
              top:195,
              left: 7,
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5))
                ),
                child: Center(child: Text("New Season",style: mTextStyle13(mFontColor: Colors.white),)),
              ),
            ):Container(),

            /// new Season Coming
           isComing?Positioned(
              top:177,
              left: 7,
              child: Column(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                    ),
                    child: Center(child: Column(
                        children: [
                          Text("New Season",style: mTextStyle13(mFontColor: Colors.white))
                        ]
                    )
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                       ),
                    child: Center(child: Text("Coming Soon",style: mTextStyle13())
                    ),
                  ),
                ],
              ),
            ):Container(),
          ],
        ),
      ),
    );

  }
}