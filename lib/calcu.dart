import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  double angkapertama = 0;
  double angkakedua = 0;
  double hasil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kalkulator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20)),
              Text(
                "Calculator",
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: angka1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Masukan Angka Pertama",
                      ),
                      onChanged: (text) {
                        setState(() {
                          angkapertama = double.parse(angka1.text);
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: TextField(
                      controller: angka2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Masukan Angka Kedua",
                      ),
                      onChanged: (text) {
                        setState(() {
                          angkakedua = double.parse(angka2.text);
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              hasil = angkapertama + angkakedua;
                            });
                          },
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 18),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              hasil = angkapertama - angkakedua;
                            });
                          },
                          child: Text("-", style: TextStyle(fontSize: 18))),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              hasil = angkapertama / angkakedua;
                            });
                          },
                          child: Text("/", style: TextStyle(fontSize: 18))),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              hasil = angkapertama * angkakedua;
                            });
                          },
                          child: Text("x", style: TextStyle(fontSize: 18))),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 20),
                      child: Text("$hasil", style: TextStyle(fontSize: 18))),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hasil = 0;
                          angka1.clear();
                          angka2.clear();
                        });
                      },
                      child: Text('Reset'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}