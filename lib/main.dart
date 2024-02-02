import 'package:flutter/material.dart';

// 1. material.dart 수입하기
// 2. main 함수에 runApp(); 무조건 호출(루트 위젯으로 만들어 준다.)

void main() {
  runApp(const MyApp());
}

// 처음부터 위젯을 개발하는 것은 힘듦 --> 상속, 구현 받아서 코드 작성
// StatelessWidget, StatefulWidget 두가지 중 하나 선택

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //생성자, 선택적 매개 변수 사용, super 부모클래스의 key값을 불러옴

  //build()메서드 : 화면을 랜더링 해줌
  @override
  Widget build(BuildContext context) {
    print("build() 메서드 호출 확인");
    return MaterialApp(
      debugShowCheckedModeBanner: false, //화면서에 디버그띠 사라짐
      home: StorePage(),
    );
  }
} //end of MyApp

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Scaffold 시각적 레이아웃 구조를 만들어 주는 위젯
    //위젯 - 부모가 될 수 있는, 자식만 될 수 있는 위젯이 존재
    return Scaffold(
      body: SafeArea(
        // SafeArea : 자식 위젯에 패딩을 넣어서 디바이스 영역이 앱의 위젯 영역을 침범하는 것을 막아준다.
        child: Column(
          children: [
            // 1번 자식
            Padding(
              padding: EdgeInsets.all(25.0), //좌우, 위아래 모두
              child: Row(
                children: [
                  Text(
                    'Woman',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(), //빈 공간 만들어주기
                  Text(
                    'Kids',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    'Shoes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text('Bag',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/bag.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 2),
            Expanded(
              flex: 1,
              child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
} // end of StorePage
