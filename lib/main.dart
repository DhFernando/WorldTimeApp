
import 'package:flutter/material.dart';
import './practice.dart';

import './pages/loading.dart';
import './pages/home.dart';
import './pages/location.dart';

void main() => runApp(MaterialApp(
  // home : Home() ,
  initialRoute: '/' ,
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(), 
    '/location' : (context) => Location(), 
    '/practice' : (context) => Practice(),
  },
));

