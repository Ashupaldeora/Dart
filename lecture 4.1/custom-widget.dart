import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF007066),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(
              0xFf009688,
            ),
            title: const Text(
              "🛍️List of Fruits",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3),
            ),
            centerTitle: true,
          ),
          body: const Center(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: "\n\n🍎 Apple\n",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                      fontSize: 40)),
              TextSpan(
                  text: "🍇 Grapes\n",
                  style: TextStyle(
                      color: Colors.purple,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 40)),
              TextSpan(
                  text: "🍒 Cherry\n",
                  style: TextStyle(
                      color: Colors.redAccent,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 40)),
              TextSpan(
                  text: "🍓 Strawberry\n",
                  style: TextStyle(
                      color: Colors.pink,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 40)),
              TextSpan(
                  text: "🥭 Mango\n",
                  style: TextStyle(
                      color: Color(0xFFFF9800),
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 40)),
              TextSpan(
                  text: "🍍 Pineapple\n",
                  style: TextStyle(
                      color: Colors.green,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 40)),
              TextSpan(
                  text: "🍋 Lemon\n",
                  style: TextStyle(
                      color: Colors.yellow,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 40)),
              TextSpan(
                  text: "🍉 Watermelon\n",
                  style: TextStyle(
                      color: Colors.lightGreenAccent,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 40)),
              TextSpan(
                  text: "🥥 Coconut\n\n",
                  style: TextStyle(
                      color: Colors.brown,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 40)),
                custom(name: "  banana\n", color: Colors.yellow, fontsize: 40, letterspacing: 2),
            ])),
          ),
        ),
      ),
    );
  }
}
 TextSpan custom( {String? name, required Color color, required double fontsize,required double letterspacing })
 {
    return TextSpan(text: name, style: TextStyle( color :color,fontSize : fontsize ));
 }
