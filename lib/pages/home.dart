

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    //
    super.initState();
  }

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isEmpty ?  ModalRoute.of(context).settings.arguments : data ;

    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg' ; 

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Home"),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               FlatButton.icon(
                onPressed: ( ) async {
                  dynamic result = await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {
                      'location' : result['location'] ,
                      'flag' : result['flag'] ,
                      'time' : result['time'] ,
                      'isDayTime' : result['isDayTime']
                    } ;
                  });
                },
                color: Colors.white,
                label: Text('Goto Location'),
                icon: Icon(Icons.my_location),
              ),
              Container(
                color: Colors.cyan[900],
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 70, 0, 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '${data["location"]}',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              letterSpacing: 4
                            ) ,
                            ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('${data["time"]}' , 
                          style: TextStyle(
                            fontSize: 60,
                            letterSpacing: 2,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}