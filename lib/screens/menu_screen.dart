import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => new _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (Text(
              "BIGKIS Kythe Group 2",
			  textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orange[200],
                fontSize: 40.0.sp,
              ),
            )),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0.h),
              child: SizedBox(
                height: 50.h,
                width: 160.w,
                child: ElevatedButton(
                  onPressed: () =>
                      {Navigator.of(context).pushNamed('/StoryMenuScreen')},
                  child: Text(
                    "Story",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                    onSurface: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
