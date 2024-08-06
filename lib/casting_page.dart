

import 'package:flutter/material.dart';
import 'package:netflix/resources_page.dart';

class CastingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("Srikanth",style: mTextStyle25(mFontColor: Colors.white),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black45,
        child: Padding(
          padding: const EdgeInsets.all(10
              +.0),
          child: Column(
            children: [
              Text("Cast",style: mTextStyle20(mFontColor: Colors.white),),
              /// list view cast
              Container(
                width: 200,
                height: 100,
                child: ListView.builder(
                  itemCount: Srikanth.castData.length,
                    itemBuilder: (_,index){
                      return Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 100,
                        height: 30,
                        child: Center(child: Text(Srikanth.castData[index]['cast'],style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white54),)),
                      );
                    }),
              ),
              Text("Director",style: mTextStyle20(mFontColor: Colors.white),),
              /// list view director
              Container(
                width:200,
                height: 100,
                child: ListView.builder(
                    itemCount: Direct.directData.length,
                    itemBuilder: (_,index){
                      return Container(
                        width: 100,
                        height: 30,
                        margin: EdgeInsets.only(bottom: 5),
                        child: Center(child: Text(Direct.directData[index]['direct'],style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white54),)),
                      );
                    }),
              ),
              Text("Writers",style: mTextStyle20(mFontColor: Colors.white),),
              /// list view writers
              Container(
                width: 200,
                height: 100,
                child: ListView.builder(
                  itemCount: Writers.writData.length,
                    itemBuilder: (_,index){
                      return Container(
                        width: 100,
                        height: 30,
                        margin: EdgeInsets.only(bottom: 5),
                        child: Center(child: Text(Writers.writData[index]['write'],style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white54),)),
                      );
                    }),
              ),
              Text("Maturity Rating",style:mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),),
              /// list view maturity rating
              Container(
                width: 200,
                height: 100,
                child: ListView.builder(
                  itemCount: Maturity.rateData.length,
                    itemBuilder: (_,index){
                      return Container(
                        width: 100,
                        height: 30,
                        margin: EdgeInsets.only(bottom: 5),
                        child: Center(child: Text(Maturity.rateData[index]['rate'],style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white54),)),
                      );
                    }),
              ),
              Text("Genres",style: mTextStyle16(mFontColor: Colors.white),),
              /// list view genres
              Container(
                width: 200,
                height: 100,
                child: ListView.builder(
                  itemCount: Genres.genData.length,
                    itemBuilder: (_,index){
                      return Container(
                        width: 100,
                        height: 30,
                        margin: EdgeInsets.only(bottom: 5),
                        child: Center(child: Text(Genres.genData[index]['gen'],style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white54),)),
                      );
                    }),
              )

            ],
          ),
        ),
      ),
    );
  }
}