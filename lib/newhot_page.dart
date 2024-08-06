
import 'package:flutter/material.dart';
import 'package:netflix/Movie_custom_card.dart';
import 'package:netflix/resources_page.dart';

class NewHotPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text("New & Hot",style: mTextStyle25(mFontColor: Colors.white),),
            SizedBox(width: 110,),
            IconButton(
                onPressed: (){

                }, icon: Icon(Icons.file_download_outlined,size: 20,color: Colors.white,)),
            IconButton
              (onPressed: (){

            }, icon: Icon(Icons.search,size: 20,color: Colors.white,))
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
              /// list for menu
              Container(
                width: double.infinity,
                height: 35,
                child: ListView.builder(
                  itemCount:Menu.menData.length ,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (_,index){
                      return
                        Row(
                          children: [
                            Container(
                              width: 300,
                              height: 100,
                              margin: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:10.0),
                                child: Row(
                                  children: [
                                    Image.network(Menu.menData[index]['image'],
                                      height: 20,width: 20,fit: BoxFit.cover,),
                                    SizedBox(width: 5,),
                                    Text(Menu.menData[index]['name'],style: mTextStyle16(mFontColor: Colors.white),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                    }),
              ),
              SizedBox(height: 20,),
              /// list view for movies
              Container(
                width: double.infinity,
                height: 600,
                child:ListView.builder(
                  itemCount: Movie.moviData.length,
                    itemBuilder: (_,index){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 200.0),
                            child: Column(
                              children: [
                                Text(Movie.moviData[index][ 'month'],style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white54),),
                                Text(Movie.moviData[index]['date'],style: mTextStyle20(mFontColor: Colors.white),),
                              ],
                            ),
                          ),
                          Container(
                              width: 300,
                              height: 300,
                              child: MovieCustomCard(imgurl: Movie.moviData[index]['image'], title: Movie.moviData[index]['title'],),
                          )
                        ],
                      );
                    })
              ),
          
              /// bottom navigation bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: (){
          
                          }, icon: Icon(Icons.home_filled,size: 20,color: Colors.white,)),
                      Text("Home",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      IconButton(
                          onPressed:(){
          
                          }, icon: Icon(Icons.videogame_asset_outlined,size: 20,color: Colors.white,)),
                      Text("Games",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      IconButton(
                          onPressed:(){
          
                          }, icon: Icon(Icons.video_library_outlined,size: 20,color: Colors.white,)),
                      Text("New & Hot",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      IconButton(
                          onPressed:(){
          
                          }, icon: Icon(Icons.account_box_outlined,size: 20,color: Colors.white,)),
                      Text("My Netflix",style:mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white) ,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}