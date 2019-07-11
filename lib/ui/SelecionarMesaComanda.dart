import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelecionarMesaComanda extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesa/Comanda"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Informar Mesa/Comanda'),
            Container(
              child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter a search term',
              ),
              keyboardType: TextInputType.number,
            ),
            ),            
            RaisedButton(
              child:Container(
                child: Text('data'),
                decoration: const BoxDecoration(
                gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
              )
            ),
            )
          ],
        ),
      ),
    );
  }
}