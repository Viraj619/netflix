

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Movie_custom_card.dart';
import 'package:netflix/movie_costom_widgite.dart';
import 'package:netflix/movies_page.dart';
import 'package:netflix/resources_page.dart';


class HomePage extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        title:Text("Netflix",style: mTextStyle25(mFontColor:Colors.red),)
        ),
     body: Container(
       width: double.infinity,
       height: double.infinity,
       child: Stack(
         children: [
           /// background container
           Column(
             children: [
               Container(
                 width: double.infinity,
                 height: 850,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(

                     colors:[Colors.grey.withOpacity(0.3),Colors.black],
                     begin: Alignment.topCenter,
                     end: Alignment.bottomCenter
                   )
                 ),
               ),
             ],
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: SingleChildScrollView(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 35,),
                   Row(
                     children: [
                       Image.asset("assert/icons/ic_netflix.png",width: 30,height: 30,),
                       SizedBox(width: 210,),
                       IconButton(
                           onPressed: (){

                           }, icon: Icon(Icons.file_download_outlined,size: 25,color: Colors.white,)),
                       IconButton(
                           onPressed: (){

                           }, icon: Icon(Icons.search,size: 25,color: Colors.white,))
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       /// tv shows
                       Container(
                         width: 100,
                         height: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.white,
                           width: 2),
                         ),
                         child: Center(child: Text("TV Shows",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),)),
                       ),
                       /// movies
                       Container(
                         width: 100,
                         height: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.white,
                           width: 2),
                         ),
                         child: Center(child: Text("Movies",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),)),
                       ),
                       ///Categories
                       Container(
                         width: 100,
                         height: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.white,
                           width: 2),
                         ),
                         child: Center(child: Text("Categories",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),)),
                       ),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Center(
                     child: Card(
                        elevation:5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)
                        ),
                        child:Container(
                          // color: Colors.red,
                          width: 200,
                          height: 250,
                          // color: Colors.green,
                          child: ClipRRect(
                            borderRadius:BorderRadius.circular(11),
                            child: Image.asset("assert/images/bg_img4.jpg"
                              ,fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                   ),
                   /// top 10
                   Container(
                     width: double.infinity,
                     height: 450,
                     child: SingleChildScrollView(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Today's Top picks for you",style: mTextStyle20(mFontColor: Colors.white),),
                           Container(
                             height: 220,
                             width: double.infinity,
                             child: ListView.builder(
                                 scrollDirection: Axis.horizontal,
                                 itemCount: TodaySPick.listTodayPick.length,
                                 itemBuilder: (_,index){
                                   return Row(
                                     children: [
                                       MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]["image"],isTop10: true,)

                                     ],
                                   );
                                 }),
                           ),
                           Text("Continue Watching for User",style: mTextStyle20(mFontColor: Colors.white),),
                           /// continue to watch
                           Container(
                             height: 220,
                             width: double.infinity,
                             child: ListView.builder(
                                 scrollDirection: Axis.horizontal,
                                 itemCount: TodaySPick.listTodayPick.length,
                                 itemBuilder: (_,index){
                                   return Row(
                                     children: [
                                       MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]['image'],)
                                     ],
                                   );
                                 }),
                           ),
                           /// netflix logo
                           Text("Only on Netflix",style: mTextStyle20(mFontColor: Colors.white),),
                           Container(
                             width: double.infinity,
                             height: 220,
                             child: ListView.builder(
                                 scrollDirection: Axis.horizontal,
                                 itemCount: TodaySPick.listTodayPick.length,
                                 itemBuilder: (_,index){
                                   return Row(
                                     children: [
                                       MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]['image'],isNetflixLogo: true,)
                                     ],
                                   );
                                 }),
                           ),
                           /// new season
                           Text("New Seasons",style: mTextStyle20(mFontColor: Colors.white),),
                           Container(
                             width: double.infinity,
                             height: 220,
                             child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: TodaySPick.listTodayPick.length,
                                 itemBuilder: (_,index){
                                   return Row(
                                     children: [
                                       MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]["image"],isNewSeason: true,)
                                     ],
                                   );
                                 }),
                           ),

                           /// Recently Added
                           Text("TV Action & Adventure",style: mTextStyle20(mFontColor: Colors.white),),
                           Container(
                             width: double.infinity,
                             height: 220,
                             child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: TodaySPick.listTodayPick.length,
                                 itemBuilder: (_,index){
                                   return Row(
                                     children: [
                                       MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]['image'],isRecentlyAdded:true,)
                                     ],
                                   );
                                 }),
                           ),
                           /// new Season coming
                           Text("Critically Acclaimed TV Shows",style: mTextStyle20(mFontColor: Colors.white),),
                           Container(
                             width: double.infinity,
                             height: 220,
                             child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: TodaySPick.listTodayPick.length,
                                 itemBuilder: (_,index){
                                   return Row(
                                     children: [
                                       MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]['image'],isComing: true,)
                                     ],
                                   );
                                 }),
                           ),
                           Text("Action Movies",style: mTextStyle20(mFontColor: Colors.white),),
                           /// list view action movies
                           Container(
                             width: double.infinity,
                             height:200 ,
                             decoration: BoxDecoration(
                                 image: DecorationImage(
                                     image: AssetImage("assert/images/bg_num.jpg"))
                             ),
                             child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: TodaySPick.listTodayPick.length,
                                 itemBuilder: (_,index){
                                   return Container(
                                     width: 200,
                                     height: 200,

                                     child: Row(
                                       children: [
                                         MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]['image'],)
                                       ],
                                     ),
                                   );
                                 }),
                           ),
                           Text("Comedy Movies",style: mTextStyle20(mFontColor: Colors.white),),

                           /// list view comedy movies
                           Container(
                             width: double.infinity,
                             height: 200,
                             child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: TodaySPick.listTodayPick.length,
                                 itemBuilder: (_,index){
                                   return Row(
                                     children: [
                                       Container(
                                         width: 250,
                                         height: 200,
                                         decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:AssetImage(Movie.moviData[index]['image']) ),
                                           borderRadius: BorderRadius.circular(10),

                                         ),

                                       ),
                                   MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]["image"])
                                     ],
                                   );
                                 }),
                           )


                         ],
                       ),
                     ),
                   )

                 ],
               ),
             ),
           ),
     
           /// over lap on poster
           Positioned(
             top:310,
             left: 110,
             child: Column(
               children: [
                 Row(
                   children: [
                     Container(
                       width: 30,
                       height: 39,
                       color: Colors.red,
                       child: Column(
                         children: [
                           Text("Top",style: mTextStyle13(mFontColor: Colors.white),),
                           Text("10",style: mTextStyle13(mFontColor: Colors.white),)
                         ],
                       ),
                     ),
                     Text("#5 in Movies Today",style: mTextStyle13(mFontColor: Colors.white),)
                   ],
                 ),
                 SizedBox(height: 3,),
                 Row(
                  children: [
                    Container(
                      width: 95,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: (){
     
                              }, icon: Icon(Icons.play_arrow,size: 15,color: Colors.black,)),
                          Text("Play",style: mTextStyle13(),)
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 95,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: (){

                              }, icon: Icon(Icons.add,size: 15,color: Colors.white,)),
                          Text("My List",style: mTextStyle13(mFontColor: Colors.white),)
                        ],
                      ),
                    )
                  ],
                 )
               ],
             ),
           ),
     
           /// bottom navigation bar
           Align(
             alignment: Alignment.bottomCenter,
             child: Container(
               width: double.infinity,
               height: 69,
               color: Colors.black45,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Column(
                     children: [
                       IconButton(
                           onPressed: (){

                           }, icon: Icon(Icons.home_filled,size: 20,color: Colors.white,)),
                       Text("Home",style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                     ],
                   ),
                   Column(
                     children: [
                       IconButton(
                           onPressed: (){

                           },
                           icon: Icon(Icons.videogame_asset_outlined,size: 20,color: Colors.white,)),
                       Text("Games",style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                     ],
                   ),
                   Column(
                     children: [
                       IconButton(
                           onPressed: (){

                           }, icon: Icon(Icons.video_library_outlined,size: 20,color: Colors.white,)),
                       Text("New & Hot",style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white)),

                     ],
                   ),
                   Column(
                     children: [
                       IconButton(
                           onPressed: (){

                           }, icon: Icon(Icons.account_box_outlined,size: 20,color: Colors.white,)),
                       Text("My Netfix",style: mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
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