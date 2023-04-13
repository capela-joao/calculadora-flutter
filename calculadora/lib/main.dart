import 'package:calculadora/widgets/botao_calculadora.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AppCalculadora());
}

class AppCalculadora extends StatefulWidget {
  const AppCalculadora({super.key});

  @override
  _StateAppCalculadora createState() => _StateAppCalculadora();
}

class _StateAppCalculadora extends State<AppCalculadora> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }

      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }

      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }

      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        backgroundColor: Color(0xff727373),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      history,
                      style: GoogleFonts.firaCode(
                        textStyle: TextStyle(
                          fontSize: 24,
                          color: Color(0xffc7c3c3),
                        ),
                      ),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      textToDisplay,
                      style: GoogleFonts.firaCode(
                        textStyle: TextStyle(
                          fontSize: 48,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BotaoCalculadora(
                      text: 'C',
                      textColor: 0xffffffff,
                      bgColor: 0xff4992f7,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    SizedBox(width: 2),
                    BotaoCalculadora(
                      text: '<',
                      textColor: 0xffffffff,
                      bgColor: 0xff4992f7,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BotaoCalculadora(
                      text: '7',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '8',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '9',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '/',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BotaoCalculadora(
                      text: '4',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '5',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '6',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: 'x',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BotaoCalculadora(
                      text: '1',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '2',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '3',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '-',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BotaoCalculadora(
                      text: '0',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '.',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '=',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                    BotaoCalculadora(
                      text: '+',
                      textColor: 0xffffffff,
                      bgColor: 0xfff7ab49,
                      textSize: 24,
                      callback: btnOnClick,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
