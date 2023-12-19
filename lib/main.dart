import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class Player {
  String? name;
  Player({required this.name});
}

void main() {
  var nico = Player(name: 'nico');
  // runApp은 import 'package:flutter/material.dart'; 여기서 가져온 함수
  // runApp은 하나의 argument를 필요로 하는데 Widget이 필요함
  // Widget은 레고 블럭이라고 생각하면됨 여라개의 widget들을 합쳐 앱을 만든다.
  // https://docs.flutter.dev/ui/widgets 여기에 많은 widget이 있음 모두 다 외울 필요 없음
  // Widget을 만들다는 건 그냥 class를 만드는것과 같음
  runApp(App());
}

// Widget으로 만드려면 flutter SDK에 있는 3개의 core Widget중에 하나를 상속 받아야 함
class App extends StatelessWidget {
  const App({super.key});

  // build 에서 return 하는것을 화면에서 보여줌 --> 모든 것이 Widget 이기 때문에 Widget을 return 함
  @override
  Widget build(BuildContext context) {
    // 근데 무엇을 return 하지? --> material || cupertino 각각 구글과 애플의 디자인 시스템(MaterialApp(),CupertinoApp())
    return MaterialApp(
      // MaterialApp class의 property
      // flutter 개발의 규칙 중 하나 scaffold가 있어야 함. scaffold는 화면의 구조를 제공함 모바일 앱의 모든 화면은 scaffold가 필요함
      home: Scaffold(
        // appBar: AppBar(
        //   elevation: 10,
        //   centerTitle: true,
        //   title: Text('Hello flutter!'),
        // ),
        backgroundColor: const Color(
            0xFF181818), // Color.fromARGB(255,24,24,24),Color.fromRGBO(24,24,24,1) 로 표현가능
        body: Padding(
          padding: const EdgeInsets.symmetric(
            // vertical: 0,
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Row는 서로를 옆에(수평), Column은 서로를 위아래(수직) 놓고 싶을 때
            //  List<Widget> children = const <Widget>[], 이 부분 상당 히 중요함 우리가 만들 화면은(수직구조) 여러개의 Column이 존재 할 예정 그래서 list로 받음
            children: [
              // SizedBox는 단지 size가 있는 box
              SizedBox(
                height: 80,
              ),
              Row(
                // Rowd에서는 MainAxisAlignment 는 수평 , crossAxisAlignment 는 수직
                // css flex에서 flex-direction: row와 같은 원리;
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        'ICON',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    // Column 에서는 MainAxisAlignment 는 수직 , crossAxisAlignment 는 수평
                    // css flex에서 flex-direction: column와 같은 원리;
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '\$5 194 382',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  // Container 은 div 와 비슷함
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 0, vertical: 60),
              //   child: Row(
              //     children: [
              //       Column(
              //         children: [
              //           Text(
              //             'Total Balance',
              //             style: TextStyle(
              //               color: Colors.white.withOpacity(0.8),
              //               fontSize: 18,
              //             ),
              //           ),
              //           Text(
              //             '5194382',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 28,
              //               fontWeight: FontWeight.w800,
              //             ),
              //           ),
              //           Row(
              //             children: [
              //               TextButton(
              //                   onPressed: () => {print('test')},
              //                   child: Text('Transfer')),
              //               TextButton(
              //                   onPressed: () => {print('test')},
              //                   child: Text('Request')),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
