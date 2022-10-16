import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ホーム"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("1ページ目に遷移する"),
          onPressed: () {
            // （1） 指定した画面に遷移する
            Navigator.push(context, MaterialPageRoute(
              // （2） 実際に表示するページ(ウィジェット)を指定する
                builder: (context) => const FirstPage()
            ));
          },
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("１ページ"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("ホームに遷移する"),
          onPressed: () {
            // 戻る
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

