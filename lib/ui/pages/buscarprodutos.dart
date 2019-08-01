import 'package:algafood/ui/model/departamento_model.dart';
import 'package:algafood/utils/constantes.dart';
import 'package:algafood/utils/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuscarProdutos extends StatelessWidget {
  bool _gridView = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesa/Comanda"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
          ),
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    List<Departamento> departamentos = [
      Departamento(1, "Cerveja",
          "https://images.tcdn.com.br/img/img_prod/682190/taca_de_cerveja_vidro_royal_beer_330ml_80585_1_20190225093350.jpg"),
      Departamento(1, "Cerveja",
          "https://images.tcdn.com.br/img/img_prod/682190/taca_de_cerveja_vidro_royal_beer_330ml_80585_1_20190225093350.jpg"),
      Departamento(1, "Cerveja",
          "https://images.tcdn.com.br/img/img_prod/682190/taca_de_cerveja_vidro_royal_beer_330ml_80585_1_20190225093350.jpg"),
      Departamento(1, "Cerveja",
          "https://images.tcdn.com.br/img/img_prod/682190/taca_de_cerveja_vidro_royal_beer_330ml_80585_1_20190225093350.jpg"),
      Departamento(1, "Cerveja",
          "https://images.tcdn.com.br/img/img_prod/682190/taca_de_cerveja_vidro_royal_beer_330ml_80585_1_20190225093350.jpg"),
      Departamento(1, "Cerveja",
          "https://images.tcdn.com.br/img/img_prod/682190/taca_de_cerveja_vidro_royal_beer_330ml_80585_1_20190225093350.jpg"),
    ];

    if (_gridView) {
      return GridView.builder(
        itemCount: departamentos.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return _itemView(departamentos, index);
        },
      );
    } else {
      return ListView.builder(
        itemCount: departamentos.length,
        itemExtent: 250, //altura da list
        itemBuilder: (context, index) {
          return _itemView(departamentos, index);
        },
      );
    }
  }

  _itemView(List<Departamento> departamentos, int index) {
    Departamento dep = departamentos[index];
    return GestureDetector(
      onTap: () {
        //push(context, DogPage(dog));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        color: colorBackground(),
        child: Column(
          children: <Widget>[
            _img("img"),
            Text(
              dep.descricao,
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  _img(String img) {
    return Image.network(
      'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_718/https://www.petz.com.br/blog/wp-content/uploads/2019/06/rabo-cachorro.jpg',
      fit: BoxFit.cover,
    );
  }
}
