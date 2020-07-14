import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
  }


class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25 );
  
  int _conteo = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Scaffold widget'),
        centerTitle: true,
      ),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text ('Numero de clicks:', style: _estiloTexto ),
          Text ('$_conteo', style: _estiloTexto ),
          ],
        ),
      ),
      floatingActionButton: _crearBontones()
    );
  }

  Widget _crearBontones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width:30),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _sustraer),
        Expanded(child: SizedBox(),), 
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _reset),
        SizedBox(width: 10.0 ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),

      ],
    );
  } // _crearBotones

  void _agregar(){
    setState(() => _conteo++);
  }

  void _reset(){
    setState(() => _conteo=0);
  }

  void _sustraer(){
    setState(() => _conteo--);
  }

}
