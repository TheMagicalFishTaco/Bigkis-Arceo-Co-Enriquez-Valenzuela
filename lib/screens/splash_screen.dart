import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => {Navigator.of(context).pushNamed('/MenuScreen')});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 200.0.h, bottom: 30.0.h),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "BIGKIS",
                              style: TextStyle(
                                color: Colors.orange[200],
                                fontSize: 40.0.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircularProgressIndicator(
                        strokeWidth: 10.r,
                        backgroundColor: Colors.orange[200],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
