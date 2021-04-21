import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ModelsAndLists/storybook_assets_list.dart';

class StoryMenuScreen extends StatefulWidget {
  @override
  _StoryMenuScreenState createState() => new _StoryMenuScreenState();
}

class _StoryMenuScreenState extends State<StoryMenuScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15.r),
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0.h, bottom: 10.0.h),
              child: Text(
                "BIGKIS Kythe Group 2",
                style: TextStyle(
                  fontFamily: 'OpenDyslexic',
                  color: Colors.orange[200],
                  fontSize: 40.0.sp,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 500,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.w,
                      childAspectRatio: 1,
                      crossAxisSpacing: 20.r,
                      mainAxisSpacing: 20.r),
                  itemCount: storyBookList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.of(context).pushNamed('/StoryBookScreen')
                        },
                        child: Image(
                          image: AssetImage("assets/" +
                              storyBookList[index].name.replaceAll(' ', '') +
                              '-thumbnail.png'),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
