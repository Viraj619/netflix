
import 'package:flutter/material.dart';
import 'package:netflix/movie_costom_widgite.dart';
import 'package:netflix/resources_page.dart';

class MoviesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      elevation: 6,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(radius)
                      // ),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        color: Colors.orangeAccent,
                        child: Image.network("https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=300",fit: BoxFit.cover,),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                        child: Text("Srikanth",style: mTextStyle20(mFontColor: Colors.white),)),
                    Row(
                      children: [
                        Text("2024",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),),
                
                        Container(
                            width: 50,
                            color: Colors.white60 ,
                            child: Center(child: Text("U/A &+",style: mTextStyle13(mFontColor: Colors.white),))
                        ),
                        Text("2h 14m",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),),
                        Icon(Icons.hd_outlined,size: 13,color: Colors.white,)
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 40,
                          color: Colors.red,
                          child: Column(
                            children: [
                              Text("Top",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),),
                              Text("10",style: mTextStyle13(mFontColor: Colors.white),)
                            ],
                          ),
                        ),
                        Text("#3 in Movies Todat",style: mTextStyle13(mFontColor: Colors.white),)
                      ],
                    ),
                    /// play button
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: (){
                
                              }, icon: Icon(Icons.play_arrow)),
                          Text("Play",style: mTextStyle13(),)
                        ],
                      ),
                    ),
                    /// download button
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(5),
                        color: Colors.black45,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.file_download_outlined,color: Colors.white,),
                          Text("Download",style: mTextStyle13(mFontColor: Colors.white),)
                        ],
                      ),
                    ),
                
                    ///description
                    Text("Ralkumar Rao star as industrialist Srikanth Bolla in this inspirational biopic that follows his path from chilhood povert to soaring succes",style: mTextStyle13(mFontColor: Colors.white),),
                    Row(
                      children: [
                        Text("Starring:",style: mTextStyle13(mFontColor: Colors.white),),
                        Text("Rajkumar Rao,jyothika,Alaya F...more",style: mTextStyle13(mFontColor: Colors.white,mFontWeigh: FontWeight.normal),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Director:",style: mTextStyle13(mFontColor: Colors.white),),
                        Text("Tushar Hiranandani",style:mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white) ,),
                      ],
                    ),
                
                    /// icons myList, rate share
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){
                
                                }, icon: Icon(Icons.add,size: 20,color: Colors.white,)
                            ),
                            Text("My List",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),)
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){
                
                                }, icon: Icon(Icons.thumb_up_alt_outlined,size: 20,color: Colors.white,)
                            ),
                            Text("Rate",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),),
                
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){
                
                                }, icon: Icon(Icons.share,size: 20,color: Colors.white,)
                            ),
                            Text("Share",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),)
                          ],
                        )
                      ],
                    ),
                    /// line
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white54,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                        child: Text("More Like This",style: mTextStyle20(mFontColor: Colors.white),)),
                                       /// grid view
                                       Container(
                     width: double.infinity,
                     height: 250,
                     child: GridView.builder(
                       itemCount: TodaySPick.listTodayPick.length,
                         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                           maxCrossAxisExtent: 150,
                           childAspectRatio: 12/16
                         ),
                         itemBuilder: (_,index){
                           return MovieCostomWidgite(imgUrl: TodaySPick.listTodayPick[index]["image"]);
                         }),),
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
                        Column(
                          children: [
                            IconButton(
                                onPressed:(){
                
                                }, icon: Icon(Icons.videogame_asset_outlined,size: 20,color: Colors.white,)),
                            Text("Games",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed:(){
                
                                }, icon: Icon(Icons.video_library_outlined,size: 20,color: Colors.white,)),
                            Text("New & Hot",style: mTextStyle13(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)
                          ],
                        ),
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
          ],
        ),
      ),
    );
  }
}
