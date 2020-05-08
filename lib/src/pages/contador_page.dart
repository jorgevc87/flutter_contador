import 'package:flutter/material.dart';

//CLASE
class ContadorPage extends StatefulWidget {
  /*@override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }*/

  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

//ESTADO, el guion bajo convierte en privado a la clase
class _ContadorPageState extends State<ContadorPage> {
  int _conteo = 10;

  final _estiloTexto = TextStyle(
    fontSize: 25,
    fontStyle: FontStyle.normal,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks!!', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _conteo = _conteo + 1;
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
