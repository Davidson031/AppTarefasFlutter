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
    return Card(
      color: Colors.transparent,
      elevation: 8.0,
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(64, 75, 96, 0.8),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: ListTile(
          minLeadingWidth: 10,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            height: 80,
            width: 10,
            decoration: BoxDecoration(
                border: Border(
              right: BorderSide(width: 1.0, color: Colors.white),
            )),
          ),
          title: Text(
            titulo,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.linear_scale, color: Colors.yellowAccent),
              SizedBox(
                height: 35,
                width: 5,
              ),
              Text(
                "** Urgente **",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
        ),
      ),
    );
  }
}
