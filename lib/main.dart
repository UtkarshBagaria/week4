import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Pomodoro(),
  ));
}

class Pomodoro extends StatefulWidget {
  @override
  _PomodoroState createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  double percent = 0;
  static int TimeInMinut = 25;
  int TimeInSec = TimeInMinut * 60;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff006064), Color(0xff80deea)],
                begin: FractionalOffset(
                  0.5,
                  1,
                )),
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "Pomodoro Clock",
                  style: TextStyle(color: Colors.black, fontSize: 40.0),
                ),
              ),
              Expanded(
                child: CircularPercentIndicator(
                  percent: percent,
                  animation: true,
                  animateFromLastPercent: true,
                  radius: 250.0,
                  lineWidth: 20.0,
                  progressColor: Colors.white,
                  center: Text(
                    "$TimeInMinut",
                    style: TextStyle(color: Colors.black, fontSize: 80.0),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Expanded(child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0),),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0,left: 20.0,right: 20.0,),
                  child: Column(
                    children: <Widget>[
                      Expanded(child: Row(
                        children: <Widget>[
                          Expanded(child: Column(
                            children: <Widget> [
                              Text(
                                "Study Timer",
                                style: TextStyle(fontSize: 30.0,),
                              ),
                              SizedBox(height:10.0,),
                              Text("25",style: TextStyle(fontSize: 80.0,),),
                            ],
                          ),
                          ),
                          Expanded(child: Column(
                            children: <Widget> [
                              Text(
                                "Pause Timer",
                                style: TextStyle(fontSize: 30.0,),
                              ),
                              SizedBox(height:10.0,),
                              Text("5",style: TextStyle(fontSize: 80.0,),),
                            ],
                          ),
                          ),

                        ],

                      ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical:28.0),
                        child: RaisedButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Start Studying",
                        style: TextStyle(color: Colors.white60,
                        fontSize: 22.0,),),),
                        ) ,
                        ),

                    ],
                  ),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
