import 'package:flutter/material.dart';
import '../services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
   
   String time = 'loading';
  //  bool isDayTime ;
    setupWorldTime() async{
      WorldTime instance = WorldTime(flag: 'germany.png', location: 'Berlin' , url: 'Europe/Berlin' );
      await instance.getTime();

      Navigator.pushReplacementNamed(context, '/home' , arguments: {
        'location' : instance.location,
        'flag' : instance.flag,
        'time' : instance.time,
        'isDayTime' : instance.isDayTime
      });

      setState(() {
       time = instance.time; 
      });
    }

    @override
    void initState()  {

      setupWorldTime(); 

      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
       body: SafeArea(
        child: Center(
          child: SpinKitFadingFour(
            color: Colors.white,
            size: 50.0,
          ),
        ) ,
      ),
    );
  }
}