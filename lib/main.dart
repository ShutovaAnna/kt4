import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(188, 230, 230, 230),
      body: Center(
        child: Wrap(children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 550, vertical: 24),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.close),),
                  Text(
                    'ВХОД',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Введите номер телефона',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Пароль',
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    textAlign: TextAlign.right,
                    "Напомнить",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  SizedBox(height: 45),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child:
                          Text('Войти', style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          backgroundColor: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Вход через соцсеть",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 40),
                      Text(
                        "Создать кошелек",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
