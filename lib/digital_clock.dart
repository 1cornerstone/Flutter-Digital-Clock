library digital_clock;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


///

class DigitalClock extends StatefulWidget {

  final double width;
  final double height;
  final BoxDecoration  decoration;


  final TextStyle textStyle;
  final TextStyle separatorTextStyle;
  final Color  borderColor;
  final double borderWidth;


  DigitalClock({
    Key key,
    this.width,
    this.height,
    this.decoration,
    this.textStyle,
    this.separatorTextStyle,
    this.borderColor,
    this.borderWidth,
    }):
 super(key:key);



  @override
  _DigitalClockState createState() => _DigitalClockState();


}

class _DigitalClockState extends State<DigitalClock> with SingleTickerProviderStateMixin {


  AnimationController _controller;

  Animation _animation ;

  int hour,mins,secs;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(vsync: this,duration: Duration(seconds: 60))
      ..addListener(() {
        setState(() {});
      });

    _animation = Tween<double>(begin: 0 , end: 59).animate(_controller)
     ..addStatusListener((status) {

        if (status == AnimationStatus.completed) {

          //

        }else if(status == AnimationStatus.dismissed){


        }

    });

    _controller.forward();



  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height:widget.height ,
      decoration:widget.decoration ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            padding: EdgeInsets.only(top: 3,bottom: 3),
            child: Text(
              "Hr",
              style:widget.textStyle ,
            ),
            decoration: BoxDecoration(
              border: Border(
               top: BorderSide(
                 color: widget.borderColor,
                 width: widget.borderWidth,
               )
              )
            ),

          ),

          Container(
            margin: EdgeInsets.only(left: 3,right: 3),
            child: Text(
              ":",
              style: widget.separatorTextStyle
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 3,bottom: 3),
            child: Text(
              "MM",
              style:widget.textStyle ,
            ),
            decoration: BoxDecoration(
              border: Border(
               top: BorderSide(
                 color: widget.borderColor,
                 width: widget.borderWidth,
               )
              )
            ),

          ),

          Container(
            margin: EdgeInsets.only(left: 3,right: 3),
            child: Text(
              ":",
              style: widget.separatorTextStyle
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 3,bottom: 3),
            child: Text(
              "SS",
              style:widget.textStyle ,
            ),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: widget.borderColor,
                      width: widget.borderWidth,
                    )
                )
            ),

          ),


        ],
      ),

    );
  }
}