import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

import './screens/splash_screen.dart';
import './screens/menu_screen.dart';
import './screens/story_menu_screen.dart';
import './screens/story_book_screen.dart';
//import './screens/test_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
	@override
	build(BuildContext context) { 
		SystemChrome.setPreferredOrientations([
			DeviceOrientation.portraitUp,
			DeviceOrientation.portraitDown,
		]);
		return ScreenUtilInit(
		  designSize: Size(411, 731),
		  allowFontScaling: true,
		  builder: () => MaterialApp(
			theme: ThemeData(
				primaryColor: Colors.orange[200],
				accentColor: Colors.blueGrey,
				fontFamily: 'OpenDyslexic'),
			debugShowCheckedModeBanner: false,
			home: SplashScreen(),
			routes: <String, WidgetBuilder>{
			  "/MenuScreen": (BuildContext context) => new MenuScreen(),
			  "/StoryMenuScreen": (BuildContext context) => new StoryMenuScreen(),
			  "/StoryBookScreen": (BuildContext context) => new StoryBookScreen(),
			},
		  ),
		);
	}
}
