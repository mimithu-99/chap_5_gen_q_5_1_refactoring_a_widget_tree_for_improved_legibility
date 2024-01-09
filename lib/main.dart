import 'package:flutter/material.dart';

/*

Practice Question 2: Refactoring a Widget Tree for Improved Legibility
Task Description:
Refactor the widget tree in your Flutter application to improve legibility and maintainability. Extract repetitive or complex parts of the widget tree into separate reusable widgets. For instance, if there are multiple similar button designs or text styles, create a separate widget for these and reuse them in the main widget tree.
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyLegibility(),
    );
  }
}

class MyLegibility extends StatelessWidget {
  const MyLegibility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ReusableTextStyle(
            text: 'legibility and maintainability',
            color: Colors.green,
            fontSize: 20,
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            child: const Center(
              child: Text('Test App'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: ReusableTextStyle(
                    text: 'Test apps new',
                    color: Colors.yellow,
                    fontSize: 25,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ReusableButton(),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

class ReusableButton extends StatefulWidget {
  const ReusableButton({super.key});

  @override
  State<ReusableButton> createState() => _ReusableButtonState();
}

class _ReusableButtonState extends State<ReusableButton> {
  int buttonOne = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            buttonOne++;
          });
        },
        child: Text('$buttonOne: press'),
      ),
    );
  }
}

class ReusableTextStyle extends StatelessWidget {
  const ReusableTextStyle({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
