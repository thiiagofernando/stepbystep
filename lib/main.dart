import 'package:flutter/material.dart';

void main() {
  runApp(MeuContador());
}

class MeuContador extends StatefulWidget {
  const MeuContador({Key? key}) : super(key: key);

  @override
  _MeuContadorState createState() => _MeuContadorState();
}

class _MeuContadorState extends State<MeuContador> {
  int valor = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Meu primeiro App"),
          ),
        ),
        body: Container(
          child: Center(
            child: Text(
              "Contador\n$valor",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        persistentFooterButtons: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.arrow_upward),
            onPressed: increment,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_downward_outlined),
            onPressed: decrement,
          ),
          FloatingActionButton(
            child: Icon(Icons.restart_alt),
            onPressed: zerar,
          ),
        ],
      ),
    );
  }

  void decrement() {
    setState(() {
      this.valor--;
    });
  }
  void zerar() {
    setState(() {
      this.valor = 0;
    });
  }
  void increment() {
    setState(() {
      this.valor++;
    });
  }
}
