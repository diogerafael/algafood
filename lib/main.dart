import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home:Login()));



class Login extends StatelessWidget{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );

    final passField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
          OutlineInputBorder(borderSide: BorderSide(width: 16.0, color: Colors.lightBlue.shade50))),
    );


    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Teste",textAlign: TextAlign.center,),
      ),
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
            child:  Card(
              child:Column(
                children: <Widget>[
                  TextField(autofocus: true,
                  decoration: InputDecoration(
                    labelText: 'Email'
                  ),),
              TextField(autofocus: true,
              decoration: InputDecoration(
                  labelText: 'Senha'
              ),)
                ],
              ),
            )
        )
      ),
    );
  }
}