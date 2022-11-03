import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
 <h3>oi<h3>

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();
  String imc = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Cálculo do I.M.C'),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.accessibility,
                color: const Color(0xFFec144a), size: 68.0),
            new Text(
              "Peso:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFf40f53),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: peso,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF0b020d),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Altura:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFf20741),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: altura,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFfb1309),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Resultado:",
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFFea1212),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    imc,
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFF0612ec),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                    <h4>oi<h4>
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      key: null,
                      onPressed: calcular,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Calcular",
                        style: new TextStyle(
                            fontSize: 24.0,
                            color: const Color(0xFF0d46f2),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      )),
                  new RaisedButton(
                      key: null,
                      onPressed: limpar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Limpar",
                        style: new TextStyle(
                            fontSize: 26.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      ))
                ])
          ]),
    );
  }

  void limpar() {
    peso.text = "";
    altura.text = "";
    setState(() {
      imc = "";
    });
    imc = "";
  }

  void calcular() {
    double p, a, im;
    p = double.parse(peso.text);
    a = double.parse(altura.text);
    im = p / (a * a);
    setState(() {
      imc = im.toStringAsFixed(2);
    });
  }
}


