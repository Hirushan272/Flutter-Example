import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Prop(),
  ),
  );
}
class Prop extends StatefulWidget {
  @override
  _PropState createState() => _PropState();
}

class _PropState extends State<Prop> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level += 1;
            });
            },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 50.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(150, 50, 30, 30),
                  ),
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('images/face.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text('NAME',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
              SizedBox(height: 10.0,),
              Text('Hirushan',
              style: TextStyle(
                fontFamily: 'Righteous',
                fontSize: 40.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 30.0),
              Text('LEVEL OF THE GAME',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 20.0,
                color: Colors.grey,

              ),
              ),
              SizedBox(height: 10.0,),
              Text('$level',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
              ),
              SizedBox(height: 30.0),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                height: 50.0,
                color: Colors.grey[700],
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'e17272@eng.pdn.ac.lk',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
