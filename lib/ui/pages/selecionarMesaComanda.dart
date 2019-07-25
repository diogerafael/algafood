import 'package:algafood/ui/widgets/blue_button.dart';
import 'package:algafood/utils/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buscarprodutos.dart';

class SelecionarMesaComanda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesa/Comanda"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        child: Container(
          color: Color.fromRGBO(242, 236, 236, 100),
          child: ListView(
            children: <Widget>[
              Text('Informar Mesa/Comanda',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 25)),
              Container(
                margin: EdgeInsets.all(15),
                color: Colors.white,
                height: 100.0,
                child: TextField(
                  style: TextStyle(
                      backgroundColor: Colors.white,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                  decoration:
                      InputDecoration(contentPadding: EdgeInsets.all(10)),
                  keyboardType: TextInputType.number,
                ),
              ),
              BlueButton('OK', () => _onClickOK(context)),
              //_button(context)
            ],
          ),
        ),
      ),
    );
  }

  _onClickOK(BuildContext context) {
    push(context, BuscarProdutos());
  }
}
