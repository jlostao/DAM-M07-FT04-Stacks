import 'package:flutter/cupertino.dart';
import 'layout_desktop.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  AppState createState() => AppState();
}


class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: const LayoutDesktop(),
    );
  }
}
