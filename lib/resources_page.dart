

import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle mTextStyle25(
    {FontWeight mFontWeight = FontWeight.bold,
      Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 25, fontWeight: mFontWeight, color: mFontColor);
}

TextStyle mTextStyle20(
    {FontWeight mFontWeight = FontWeight.bold,
      Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 20, fontWeight: mFontWeight, color: mFontColor);
}

TextStyle mTextStyle16(
    {FontWeight mFontWeight = FontWeight.bold,
      Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 16, fontWeight: mFontWeight, color: mFontColor);
}

TextStyle mTextStyle13(
    {FontWeight mFontWeigh = FontWeight.bold,
      Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 13, fontWeight: mFontWeigh, color: mFontColor);
}

TextStyle mTextStyle15(
    {FontWeight mFontWeigh = FontWeight.bold,
      Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 15, fontWeight: mFontWeigh, color: mFontColor);
}

TextStyle mTextStyle30(
    {FontWeight mFontWeight = FontWeight.bold,
      Color mFontColor = Colors.black}) {
  return TextStyle(
    fontSize: 30,
    fontWeight: mFontWeight,
    color: mFontColor,
  );
}
TextStyle mTextStyle10(
    {FontWeight mFontWeight = FontWeight.bold,
      Color mFontColor = Colors.black}) {
  return TextStyle(
    fontSize: 10,
    fontWeight: mFontWeight,
    color: mFontColor,
  );
}

class TodaySPick {
 static final List<Map<String, dynamic>> listTodayPick = [{
   "image": 'assert/icons/ic_profile3.jpg'
  },
   {
   "image": 'assert/images/bg_img1.jpeg'
   },
  {'image':'assert/images/bg_img2.jpg'
  },
  {
   'image':'assert/images/bg_img3.jpg'
  },
  {
  'image':'assert/images/bg_img4.jpg'
 },
 {

 'image':'assert/images/bg_img5.jpg'
 },
 {

  'image':'assert/images/bg_img6.jpg'
  },
  {

  'image':'assert/images/bg_img7.jpg'
  },
  {
  'image':"assert/images/bg_img8.jpg"
  },
  {
   'image':'assert/images/bg_img9.jpg'
  },
   {
     'image': 'assert/images/bg_img10.jpg'
   },
   {
     'image':'assert/images/bg_img.jpg'
   }
  ];
}

class Srikanth{
  static final List<Map<String,dynamic>> castData=[{
      'cast':'Rajkummar Rao',
  },
    {
      'cast':'Jyothika',
    },
    {
      'cast':'Alaya F',
    },
    {
      'cast':'Sharad Kelkar',
    },
    {
      'cast':'Sharad Kelkar',
    },
    {
      'cast':'Arnav Abdagiri',
    },
    {
      'cast':'Arnav Abdagiri',
    },
    {
      'cast': 'Srinivas Beesetty',
    },
    {
      'cast':'Anusha Nuthalu',
    },
    {
     'cast': 'Sridhar Murthy'
    },


  ];
}
class Direct {
  static final List<Map<String,dynamic>> directData=[{
    'direct':'Tushar Hiranaandani',
  }];
}
class Writers {
  static final List<Map<String,dynamic>> writData=[{
    'write':"Jagdeep Sidhu",
  },
    {
      'write':'Sumit Purohit'
    }
  ];
}
class Maturity {
  static final List<Map<String,dynamic>> rateData=[{
    'rate':"U/A 7+",
  },
    {
      'rate':'language,mild themes'
    }];
}
class Genres {
  static final List<Map<String,dynamic>> genData=[{
    'gen':'Hindi'
  }];
}


/// new hot page menu
 class Menu{
  static final List<Map<String,dynamic>> menData=[{
    'image':'assert/icons/ic_hotpage.png',
    'name':'Coming soon'
  },
    {
     'image':'assert/icons/ic_hotoage2.png',
      'name':"3D Movies"
    },
    {
      'image':'assert/icons/ic_hote_page3.png',
      'name':"Everyone's Watching"
    },
    {
      'image':"assert/icons/ic_netflix.png",
      'name':'Netflix Movies'
    },
    {
      'image':"assert/icons/ic_hote_pagegame.png",
      'name':"Games"
    }
  ];
 }

 ///  new hot page movie
class Movie{
  static final List<Map<String,dynamic>> moviData=[{
    'month':'Jun',
    'date':'01',
    'title':"Phir Aayi Hassen DillRuba",
    'image':"assert/images/bg_hotpage1.jpg"
  },
    {
      'month':'Jun',
      'date':'02',
      'title':"RWEV TYRW HFDJ FGJBF",
      'image':'assert/images/bg_hotpage2.jpg'
    },
    {
      'month':'Agu',
      'date':'15',
      'title':"YBH HHD SHUH SFFIP VBKLF",
      'image':'assert/images/bg_hotpage3.jpg'
    },
    {
      'month':'Agu',
      'date':'30',
      'title':"AGSJ YYR FJGST LGUHS",
      'image':'assert/images/bg_hotpage4.jpg'
    },
    {
      'month':'Agu',
      'date':'30',
      'title':"AGSJ YYR FJGST LGUHS",
      'image':'assert/images/bg_hotpage5.jpg'
    },
    {
      'month':'Jan',
      'date':'11',
      'title':"KHG GIU SKHDB HIUSO",
      'image':'assert/images/bg_hotpage6.jpg'
    },
    {
      'month':'Dec',
      'date':'14',
      'title':"SVE EJDTV ETILSV TDJ",
      'image':'assert/images/bg_hotpage7.jpg'
    },
    {
      'month':'Feb',
      'date':'20',
      'title':"JKDG DHKD HGDSLA TEB",
      'image':'assert/images/bg_hotpage8.jpg'
    },
    {
      'month':'Mar',
      'date':'20',
      'title':"SGL GODGG AFRSJD",
      'image':'assert/images/bg_hotpage9.jpg'
    },
    {
      'month':'Apr',
      'date':'10',
      'title':"KVT SJDDH GDSUJ",
      'image':'assert/images/bg_hotpage10.jpg'
    },
    {
      'month':'May',
      'date':'25',
      'title':"LHDK DGID NFKYD TINF",
      'image':'assert/icons/ic_profile.jpg'
    },
  ];
}







