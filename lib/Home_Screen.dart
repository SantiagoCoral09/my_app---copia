import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(12),
        appBar: AppBar(
          title: Text("Contador: Santiago Coral"),
          elevation: 5.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Número de Taps"),
              Text("$contador"), //imprime la variable

              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: new IconButton(
                        icon: new Icon(Icons.add),
                        onPressed: () {
                          print("Aquí escribo mi lógica del botón de acción");
                          contador++;
                          setState(() {
                            print(contador);
                          });
                        },
                      ),
                    ),
                  )),
                  InkWell(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: new IconButton(
                        icon: new Icon(Icons.remove),
                        onPressed: () {
                          print("Aquí escribo mi lógica del botón de acción");
                          contador--;
                          setState(() {
                            print(contador);
                          });
                        },
                      ),
                    ),
                  )),
                  InkWell(
                      child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: new IconButton(
                        icon: new Icon(Icons.restore),
                        onPressed: () {
                          print("Aquí escribo mi lógica del botón de acción");
                          contador = 0;
                          setState(() {
                            print(contador);
                          });
                        },
                      ),
                    ),
                  ))
                ],
              )),
            ],
          ),
        ));
  }
}
