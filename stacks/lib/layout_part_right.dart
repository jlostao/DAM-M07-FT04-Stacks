import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';

class LayoutPartRight extends StatefulWidget {
  const LayoutPartRight({Key? key}) : super(key: key);

  @override
  LayoutPartRightState createState() => LayoutPartRightState();
}

class LayoutPartRightState extends State<LayoutPartRight> {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
    return Container(
      width: double.infinity, 
      height: double.infinity,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [Text("Right sidebar")],
      ),
    );
  }
}
