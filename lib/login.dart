import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬
          children: [
            
            // 이미지 추가
            SizedBox(
              width: 500,
              height: 500,
              child: Image.asset("assets/img/daewonii.png", fit: BoxFit.cover),
            ),

            // 이미지와 텍스트 사이 간격 추가
            SizedBox(height: 20),

            // 텍스트
            const Text(
              '대원 업무관리 시스템',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            // 텍스트와 입력창 사이 간격 추가
            SizedBox(height: 30),

            // 아이디 입력 필드
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 260),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "아이디",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),

            // 입력창 간 간격 추가
            SizedBox(height: 15),

            // 비밀번호 입력 필드
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 260),
              child: TextField(
                obscureText: true, // 비밀번호 입력 마스킹
                decoration: InputDecoration(
                  labelText: "비밀번호",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),

            // 로그인 버튼과의 간격 추가
            SizedBox(height: 20),

            // 로그인 버튼
            ElevatedButton(
              onPressed: () {
                // 로그인 로직 추가 가능
              },
              child: Text("로그인"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      );
  }
}