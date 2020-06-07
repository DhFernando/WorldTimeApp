import 'package:flutter/material.dart';
import './name.dart';

class NameCard extends StatelessWidget {
  final Name name;
  final Function delete;
  NameCard ({this.name , this.delete});


  @override

  Widget build(BuildContext context){
    return Card(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Colors.black,
                // padding: EdgeInsets.fromLTRB(, 1, 1, 1),
                height: 25,
                width: 200,
                // child: Text(' - ${name.position} - ${name.name} '),
              ),
              Positioned(
                top: 5,
                left: 10,
                child: Text(
                  ' *  ${name.position} - ${name.name} ',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
                Positioned(
                  top: -12,
                  left: 160,
                  child: IconButton(
                    onPressed: delete,
                    icon:Icon(Icons.delete) ,
                    color: Colors.red,
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}

