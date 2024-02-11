import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:we_chat/screens/splash_screen/splash_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Step for full screen app : 1
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  /// Step 2 : app > main > res > value > styles.xml > NormalTheme > add item

  /// for setting orientation portrait only
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then(
    (value) async {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      runApp(const MyApp());
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 5,
          backgroundColor: Color(0xff553370),
          titleTextStyle: TextStyle(
            color: Color(0xffc199cd),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Color(0xffc199cd)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff553370),
            padding: EdgeInsets.symmetric(vertical: 13),
            foregroundColor: Color(0xffc199cd),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff553370),
          foregroundColor: Color(0xffc199cd),
          shape: CircleBorder(),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
