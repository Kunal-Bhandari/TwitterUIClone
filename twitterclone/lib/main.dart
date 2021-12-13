
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const TwitterClone());
}

class TwitterClone extends StatelessWidget {
  const TwitterClone({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.blue.shade300),
          elevation: 0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor:Colors.white,
          elevation: 0,
          selectedIconTheme: IconThemeData(color: Colors.blue.shade300, size: 22 ),
          unselectedIconTheme: IconThemeData(color: Colors.grey.shade400, size: 22),
        ),
          scaffoldBackgroundColor: Colors.white

      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const FaIcon(FontAwesomeIcons.twitter),
        centerTitle: true,
        actions: const [ Padding(
            padding: EdgeInsets.only(top: 12,right: 16),
          child: FaIcon(FontAwesomeIcons.starOfLife),
        )
        ],
        
      ),
      drawer: Drawer(),
        body: Container(
            child: Column(children: [
             Row(

              children:  [
                 Image.asset('images/BiswaTest.jpg'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                  Text ('Flutter Doctor',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 30.0,fontFamily: 'Roboto'),
                   ),
                  Text('This is a beautiful scenery.',
                    style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight:FontWeight.w300,fontFamily: 'Roboto'),
                  ),
                  ],
                ),
                Spacer(),
                Padding( padding: const EdgeInsets.only(right:5.0),
                 child: FaIcon(FontAwesomeIcons.ellipsisH,
                  color: Colors.grey.shade400,
                 ),
                ),
              ],
             ),
             Row(
               children: [
                 Expanded(
                 child:
                 Padding(
                     padding: const EdgeInsets.fromLTRB( 16.0, 5.0, 5.0, 0.0),
                   child:Image.asset('images/test.jpeg')
                  ),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,

               children: [
                 FaIcon(FontAwesomeIcons.comment,
                 color: Colors.grey.shade400,
                 ),
                 FaIcon(FontAwesomeIcons.retweet,
                   color: Colors.grey.shade400,
                 ),
                 FaIcon(FontAwesomeIcons.heart,
                   color: Colors.grey.shade400,
                 ),
                 FaIcon(FontAwesomeIcons.upload,
                   color: Colors.grey.shade400,
                 ),
               ],
             ),
             ],
            ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: ""),
            BottomNavigationBarItem(icon:FaIcon(FontAwesomeIcons.search), label: ""),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bell),label: ""),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.envelope),label: ""),
          ],
          type: BottomNavigationBarType.fixed,
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
