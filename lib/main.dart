import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  // build 에서 return 하는것을 화면에서 보여줌 --> 모든 것이 Widget 이기 때문에 Widget을 return 함
  @override
  Widget build(BuildContext context) {
    // 근데 무엇을 return 하지? --> material || cupertino 각각 구글과 애플의 디자인 시스템(MaterialApp(),CupertinoApp())
    return MaterialApp(
      // MaterialApp class의 property
      // flutter 개발의 규칙 중 하나 scaffold가 있어야 함. scaffold는 화면의 구조를 제공함 모바일 앱의 모든 화면은 scaffold가 필요함
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          title: Text('Hello flutter!'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
