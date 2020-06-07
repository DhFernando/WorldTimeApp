import 'package:flutter/material.dart';
import './name.dart';
import './name_card.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {

  int count = 0;
  List<Name> names = [
    Name(name:'dilshan' , position: 'first name' ),
    Name(name:'hasitha' , position: 'Sec name' ),
    Name(name:'fernando' , position: 'Last name' )
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,30,20,0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start ,
          
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/DSC01857.jpg'),
                  radius: 70.0,
                ),
              ],
            ),
            Divider(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: ,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Text('Name' , 
                        style: TextStyle(color: Colors.cyan , letterSpacing: 2),
                        ),
                      SizedBox(height: 10,),
                      Text('Dilshan hasitha Fernando'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[
                      Text('Name' , 
                        style: TextStyle(color: Colors.cyan , letterSpacing: 2),
                        ),
                      SizedBox(height: 10,),
                      Text('Dilshan hasitha Fernando'),
                    ],
                  ),  
              ],),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: ,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: <Widget>[
                    Text('Name' , 
                      style: TextStyle(color: Colors.cyan , letterSpacing: 2),
                      ),
                    SizedBox(height: 10,),
                    Text('Dilshan hasitha Fernando'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: <Widget>[
                    Text('Name' , 
                      style: TextStyle(color: Colors.cyan , letterSpacing: 2),
                      ),
                    SizedBox(height: 10,),
                    Text('Dilshan hasitha Fernando'),
                  ],
                ),  
            ],),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('$count',
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      color: Colors.cyan[100],
                      height: 110,
                    ),
                    Positioned(
                      top: 5,
                      left: 10,
                      child: Column(
                        children: names.map((name){
                        return NameCard(name: name, delete : () {
                          setState(() {
                           names.remove(name); 
                          });
                        });
                      }).toList()
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(count < 10){
            setState(() {
              count++ ; 
            });
          }else{
            count = 0 ;
          }
          
        },
        child: Text('Click'),
        backgroundColor: Colors.cyan[600],
      ),
      
    );
  }
}


