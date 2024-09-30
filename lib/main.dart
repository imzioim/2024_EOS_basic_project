import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EOS ToDoList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: 'Pretendard',
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen.withOpacity(0.1),
          title: Text('EOS ToDoList'),
          leading: Image.asset('assets/images/eos_logo.png'),
        ),
        body: Expanded(
          child: Column(
            children: [
              Container(
                  height: 200,
                  padding: EdgeInsets.all(25),
                  child: Row(children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 10, color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Image.asset('assets/images/eos_logo.png'),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '임지오(본인 이름)',
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('4.0이상 학점받기!')
                        ])
                  ])),
              Container(
                height: 500,
                color: Colors.lightGreen.withOpacity(0.1),
              )
            ],
          ),
        ));
  }}