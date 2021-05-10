import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              'Número de taps:',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ])),
    floatingActionButton: _crearBotones() ,
    );
  }




  Widget _crearBotones(){

    return Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width:30),
         FloatingActionButton(onPressed: _resetear,child: Icon(Icons.exposure_zero)),
         Expanded(child: SizedBox()),
         FloatingActionButton(onPressed: _quitar,child: Icon(Icons.remove)),
         SizedBox(width: 5.0,),
         FloatingActionButton(onPressed: _agregar,child: Icon(Icons.add)),
    ],); 
    
    
   

  }


  void _agregar(){
    
    setState(() =>_conteo++);
  }
  void _quitar(){
    
    setState(() =>_conteo--);
  }
  void _resetear(){
    
    setState(() =>_conteo = 0);
  }





}
