import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rbtest/resources/colors.dart';
import 'package:rbtest/ui/notification_screen/notification_screen.dart';
import 'package:rbtest/ui/widgets/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.bg,
          body: Body(),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => BodyState();
}

class BodyState extends State<Body> {
  var _index = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          AppTabbar(
            onTap: (index) {
              _index = index;
              setState(() {});
            },
          ),
          Expanded(
            child: IndexedStack(
              index: _index,
              children: const [
                Center(
                  child: Text('empty'),
                ),
                Center(
                  child: Text('empty'),
                ),
                NotificationScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
