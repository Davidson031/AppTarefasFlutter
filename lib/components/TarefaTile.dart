// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TarefaTile extends StatelessWidget {
  String titulo;
  //const TarefaTile({Key? key}) : super(key: key);

  TarefaTile(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      height: 120,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(64, 75, 96, 0.8),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Center(
        child: ListTile(
          minLeadingWidth: 10,
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          leading: Container(
            height: 100,
            width: 10,
            decoration: BoxDecoration(
                border: Border(
              right: BorderSide(width: 2.0, color: Colors.white),
            )),
          ),
          title: Text(
            titulo,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.linear_scale, color: Colors.grey, size: 50,),
            ],
          ),
          trailing: Icon(Icons.done, color: Colors.green, size: 50.0),
        ),
      ),
    );
  }
}
