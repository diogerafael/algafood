import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuscarProdutos extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesa/Comanda"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.grid_on),
          )
        ],
      ),
      body: _body(),
          );
        }
      
        _body() {
          return GridView(children: <Widget>[

          ],);
        }
}
