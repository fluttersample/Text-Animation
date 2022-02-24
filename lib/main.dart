import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_animation/marquee_view.dart';
import 'package:text_animation/text_kit.dart';
import 'package:text_animation/text_liquid.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',

      theme: CupertinoThemeData(
        primaryColor: Colors.blue,

      ),

      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        border: const Border(top: BorderSide()),
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.text_aligncenter),
            label: 'Text Kit',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.text_bubble),
            label: 'Text Kit',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.scribble),
            label: 'Marquee',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch(index){

          case 0 :{
            return CupertinoTabView(
              builder: (BuildContext context) {
                return const TextLiquid();
              },
            );
          }
          case 1 :{
            return CupertinoTabView(
              builder: (BuildContext context) {
                return const TextKitView();
              },
            );
          }
          case 2:{
            return CupertinoTabView(
              builder: (BuildContext context) {
                return MarqueeView();
              },
            );
          }

        }
        return Container();
      },
    );
  }


}
