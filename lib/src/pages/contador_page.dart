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
  int _conteo = 00;

  //DEFINE EL ESTILO DEL TEXTO
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
            Text('Número de Taps!!', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 30.0,),
          FloatingActionButton(
        onPressed: _reset,
        child: Text('0'),
        ),
        Expanded(child:SizedBox()),
        FloatingActionButton(
        onPressed: _agregar,
        child: Icon(Icons.add),
        ),
        FloatingActionButton(
        onPressed: _sustraer,
        child: Icon(Icons.remove),
        )
        ],
      );
  }

  void _agregar(){
    setState(() {
      _conteo++;
    });
  }

  void _sustraer(){
    setState(() {
      if(_conteo>0){
        _conteo--;
      }
    });
  }

  void _reset(){
    setState(() {
      _conteo = 0;
    });
  }

}
