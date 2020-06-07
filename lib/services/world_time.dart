import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDayTime;

  WorldTime({this.flag ,this.location , this.time , this.url});

    Future<void> getTime() async{
        // await Future.delayed(Duration(seconds : 3) , () {
        //     print('await function printed');
        //   });

    // make the request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDayTime = now.hour > 6 && now.hour < 18 ? true : false ;
      time = DateFormat.jm().format(now);
      // return time;
      }

}