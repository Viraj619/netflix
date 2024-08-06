

import 'package:flutter/material.dart';
import 'package:netflix/movie_costom_widgite.dart';
import 'package:netflix/resources_page.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text("My Netflix",style: mTextStyle20(mFontColor: Colors.white),),

            SizedBox(
              width: 140,
            ),
            IconButton(
                onPressed: (){

                }, icon: Icon(Icons.search,size: 20,color: Colors.white,)),
            IconButton(
                onPressed: (){

                }, icon: Icon(Icons.dehaze_rounded,size: 20,color: Colors.white,))
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [

                  /// over lapping 1
                  Positioned(
                    top: 210,
                    left: 10,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 220,
                    left: 20,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Positioned(
                    top:230,
                    left:30 ,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                          width: 150,
                          height: 100,
                          decoration:BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assert/icons/ic_profile.jpg"),
                            fit: BoxFit.cover)
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    left: 190,
                    child: Column(
                      children: [
                        Text("Suggestion for Tonight",style: mTextStyle16(mFontColor: Colors.white),),
                        Text("Eplore personalised picks.",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),),
                        Text("13 Jul",style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white54),)
                      ],
                    ),
                  ),

                  /// over lapping 2
                  Positioned(
                    top: 350,
                    left: 10,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 360,
                    left: 20,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Positioned(
                    top:370,
                    left:30 ,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                          width: 150,
                          height: 100,
                          decoration:BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assert/icons/ic_profile2.jpg"),
                            fit: BoxFit.cover)
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: 370,
                    left: 190,
                    child: Column(
                      children: [
                        Text("Your latest top pickers",style: mTextStyle16(mFontColor: Colors.white),),
                        Text("Find a new favourite.",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),),
                        Text("10 Jul",style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white54),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Card(
                            elevation: 5,
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11)
                            ),
                            child: Icon(Icons.account_box_outlined,size: 100,)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Profile",style: mTextStyle25(mFontColor: Colors.white),),
                            ),
                            IconButton(
                                onPressed: (){

                                }, icon: Icon(Icons.arrow_drop_down,size: 20,color: Colors.white,))
                          ],
                        ),
                        /// notification
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle
                              ),
                              child: IconButton(
                                  onPressed: (){

                                  }, icon: Center(child: Icon(Icons.notifications,size: 20,color: Colors.white,))),
                            ),
                            SizedBox(width: 10,),
                            Text("Notifications",style: mTextStyle20(mFontColor: Colors.white),),
                            SizedBox(width:120,),
                            IconButton(
                                onPressed: (){

                                }, icon: Icon(Icons.navigate_next,size: 20,color: Colors.white,))
                          ],
                        ),
                        SizedBox(height: 280,),
                        /// downloads
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color:Colors.blueAccent ,
                                shape: BoxShape.circle
                              ),
                              child:Icon(Icons.file_download_outlined,size: 20,color: Colors.white,)
                            ),
                            SizedBox(width: 10,),
                            Text("Downloads",style: mTextStyle20(mFontColor: Colors.white),),
                            SizedBox(width: 120,),
                            IconButton(
                                onPressed: (){

                                }, icon: Icon(Icons.navigate_next,size: 20,color: Colors.white,))
                          ],
                        ),
                        SizedBox(height: 10,),
                        /// liked
                        Align(
                          alignment: Alignment.bottomLeft,
                            child: Text("TV Shows & Movies You have Liked",style: mTextStyle16(mFontColor: Colors.white),)),
                       SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          height: 170,
                          //color: Colors.orange,
                          child:Row(
                            children: [
                              //MovieCostomWidgite(imgUrl:"assert/icons/ic_profile3.jpg" )
                            ],
                          ) ,
                        ),

                        /// bottom navigation bar
                        Container(
                          width: double.infinity,
                          height: 69,
                          color: Colors.black12,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: (){

                                      }, icon: Icon(Icons.home_filled,size: 25,color: Colors.white,)),
                                  Text("Home",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                                ],
                              ),
                              SizedBox(width: 30,),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: (){

                                      },
                                      icon: Icon(Icons.videogame_asset_outlined,size: 25,color: Colors.white,)),
                                  Text("Games",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                                ],
                              ),
                              SizedBox(width: 30,),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: (){

                                      }, icon: Icon(Icons.video_library_outlined,size: 25,color: Colors.white,)),
                                  Text("New & Hot",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white)),

                                ],
                              ),
                              SizedBox(width: 30,),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: (){

                                      }, icon: Icon(Icons.account_box_outlined,size: 26,color: Colors.white,)),
                                  Text("My Netfix",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                                ],
                              )
                            ],
                          ),
                        ),


                        ],
                      ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}