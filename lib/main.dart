import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone',
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chat used firebase',
      home: DefaultTabController(
          length: 1,
          child: Scaffold(

            appBar: AppBar(
              title: Text(' '),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent.withOpacity(1),
            ),
            drawer: Drawer(
              child: Center(
                child: Text("커스텀 기능 추후 추가 예정",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            body: TabBarView(
              children: [
                Center(
                  child: Container(
                    color: Colors.black,
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('$_counter',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            SizedBox(height: 32,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: _minus,
                                  child: Text("-",
                                      style: TextStyle(
                                        fontSize: 32,
                                      )
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red,
                                      minimumSize: Size(62.5,50)
                                  ),
                                ),

                                SizedBox(width: 16,),

                                ElevatedButton(
                                  onPressed: _plus,
                                  child: Text("+",
                                      style: TextStyle(
                                        fontSize: 32,
                                      )
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      minimumSize: Size(62.5,50)
                                  ),
                                ),
                              ],

                            ),


                          ],
                        )
                    ),
                  ),
                ),
              ],
            ),

            bottomNavigationBar: bottomBar(),

          )),
    );
  }

  void _minus(){
    setState(() {
      _counter--;
    });
  }

  void _plus(){
    setState(() {
      _counter++;
    });
  }

}

class bottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, //색상
      child: Container(
        height: 70,
        padding: EdgeInsets.only(bottom: 10, top: 5),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.black,
          indicatorWeight: 4,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              text: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}