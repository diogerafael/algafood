import 'package:flutter/material.dart';

import 'SelecionarMesaComanda.dart';

class Login extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final _tLogin = TextEditingController(text: "");
  final _tSenha = TextEditingController(text: "");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "Sistema Mesa/Comanda",
          textAlign: TextAlign.center,
        ),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Form(
        child: Center(
      child: SizedBox(
          width: 300.0,
          height: 320.0,
          child: Card(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              children: <Widget>[
                _loginSetion(),
                _passwdSetion(),
                _lembrarMe(),
                _buttonLogin(context),
              ],
            ),
          )),
    ));
  }

  _lembrarMe() => Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(child: Text('Lembrar login')),
          Expanded(
            child: Switch(
                value: isSwitched,
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
                onChanged: _onSwitchChanged),
          )
        ],
      ));

  _loginSetion() => Container(
        child: Row(
          children: <Widget>[
            Icon(Icons.people),
            Expanded(
              child: TextFormField(
                controller: _tLogin,
                autofocus: true,
                decoration: InputDecoration(labelText: 'Código'),
              ),
            )
          ],
        ),
      );

  bool isSwitched = true;

  _passwdSetion() {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.add),
          Expanded(
            child: TextFormField(
              obscureText: true,
              controller: _tSenha,
              autofocus: true,
              decoration: InputDecoration(labelText: 'Senha'),
            ),
          )
        ],
      ),
    );
  }

  void _onSwitchChanged(bool value) {
    isSwitched = false;
  }

  _buttonLogin(BuildContext context) {
    return Container(
      color: Color.fromRGBO(242,236,236,100),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelecionarMesaComanda()),
          );
        },
        child: Container(
          color: Colors.blue,
          child: Text(
            'Entrar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  _img() {
    return Image.asset(
      "assets/images/dog2.png",
      fit: BoxFit.contain,
    );
  }
}
