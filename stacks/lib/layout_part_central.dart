import 'package:cupertino_base/widget_popover.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';

class LayoutPartCentral extends StatefulWidget {
  const LayoutPartCentral({super.key});

  @override
  LayoutPartCentralState createState() => LayoutPartCentralState();
}

class LayoutPartCentralState extends State<LayoutPartCentral> {
  final GlobalKey _settingsButtonKey = GlobalKey();
  Color textColor = Colors.black;

  void changeTextColor(Color newColor) {
    setState(() {
      textColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: appData.toggleSidebarLeft,
                  child: Icon(
                    CupertinoIcons.sidebar_left,
                    color: appData.isSidebarLeftVisible
                        ? CupertinoColors.activeBlue
                        : CupertinoColors.black,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )),
              const SizedBox(width: 16),
            ],
          ),
          middle: CupertinoButton(
            key: _settingsButtonKey,
            padding: const EdgeInsets.all(0.0),
            onPressed: () {
              WidgetPopover.showPopover(
                  context: context,
                  key: _settingsButtonKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            changeTextColor(Colors.black);
                            WidgetPopover.hidePopover();
                          },
                          child: Text('Black'),
                        ),
                        GestureDetector(
                          onTap: () {
                            changeTextColor(Colors.red);
                            WidgetPopover.hidePopover();
                          },
                          child: Text('Red'),
                        ),
                        GestureDetector(
                          //verd
                          onTap: () {
                            changeTextColor(Colors.green);
                            WidgetPopover.hidePopover();
                          },
                          child: Text('Green'),
                        ),
                        GestureDetector(
                          //blau
                          onTap: () {
                            changeTextColor(Colors.blue);
                            WidgetPopover.hidePopover();
                          },
                          child: Text('Blue'),
                        ),
                      ],
                    ),
                  ));
            },
            child: const Icon(
              CupertinoIcons.settings,
              color: CupertinoColors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
          trailing: CupertinoButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: appData.toggleSidebarRight,
              child: Icon(
                CupertinoIcons.sidebar_right,
                color: appData.isSidebarRightVisible
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.black,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              )),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, //he tractat de centrar el text a la meitat de la pantalla pero no m'ha deixat
            children: [
              Text(
                'CENTRAL',
                style: TextStyle(
                  color: textColor,
                  fontSize: 30,
                
                ),
              ),
            ],
          ),
        ));
  }
}
