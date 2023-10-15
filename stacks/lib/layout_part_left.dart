import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';

class LayoutPartLeft extends StatefulWidget {
  const LayoutPartLeft({Key? key}) : super(key: key);

  @override
  LayoutPartLeftState createState() => LayoutPartLeftState();
}

class LayoutPartLeftState extends State<LayoutPartLeft> {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
    return Container(
      width: double.infinity,
      height: double.infinity, 
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [Text("Left sidebar")],
      ),
    );
  }
}
