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
              child: Container(
                color: Colors.grey[900],
                // Column 추가
                child: Column(
                  children: [
                  // Drawer 헤더 추가
                  DrawerHeader(
                  // 헤더 영역의 중앙에 '오늘 우주는' 이라는 텍스트 추가
                  child: Center(
                    child: Text(
                    '자이 카운터',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  // 헤더 영역 배경을 검정색 박스로 꾸밈
                  decoration: BoxDecoration(color: Colors.black),
                  ),
                  // ListTile 을 추가 한다
                  ListTile(
                  // 가장 앞에 (leading) 별 모양의 아이콘을 추가한다.
                    leading: Icon(Icons.settings, color: Colors.white),
                    // 아이콘 뒤에 '앱 평가하기' 라는 텍스트를 추가한다.
                    title: Text(
                      '설정',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    // 클릭시 플레이스토어 실행 필요. (추후 추가 예정)
                    onTap: () {

                    },
                  ),
                  ],
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