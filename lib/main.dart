import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: "Calculator", home: new Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var num1 = 0, num2 = 0, sum = 0;
  final t1 = new TextEditingController();
  final t2 = new TextEditingController();

  void doadd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void dosub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void domul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dodiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doclear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Calculator",
          style: new TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(40.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Output : $sum",
                    style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration:
                        new InputDecoration(hintText: "Enter first number"),
                    controller: t1,
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration:
                        new InputDecoration(hintText: "Enter second number"),
                    controller: t2,
                  ),
                  new Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0)),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new MaterialButton(
                            child: new Text(
                              "+",
                              style: temp(),
                            ),
                            color: Colors.blue,
                            onPressed: doadd),
                        new MaterialButton(
                            child: new Text(
                              "-",
                              style: temp(),
                            ),
                            color: Colors.blue,
                            onPressed: dosub),
                      ]),
                  new Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0)),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new MaterialButton(
                            child: new Text(
                              "*",
                              style: temp(),
                            ),
                            color: Colors.blue,
                            onPressed: domul),
                        new MaterialButton(
                            child: new Text(
                              "/",
                              style: temp(),
                            ),
                            color: Colors.blue,
                            onPressed: dodiv),
                      ]),
                  new Padding(padding: const EdgeInsets.all(10.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new MaterialButton(
                          child: new Text(
                            "C",
                            style: temp(),
                          ),
                          color: Colors.blue,
                          onPressed: doclear)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle temp() {
  return new TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  );
}
