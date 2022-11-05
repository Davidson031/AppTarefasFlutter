// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TarefaTile extends StatelessWidget {
  String titulo;

  TarefaTile(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 20, right: 30),
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      height: 100,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(64, 75, 96, 0.8),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Center(
        child: ListTile(
          minLeadingWidth: 1,
          leading: Container(
            padding: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                border: Border(
              right: BorderSide(width: 2.0, color: Colors.white),
            )),
            child: Icon(Icons.done, color: Colors.green, size: 40.0),
          ),
          title: Text(
            'blu blu blu blu blu',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.linear_scale,
                color: Colors.grey,
                size: 40,
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.delete, color: Colors.red, size: 22.0),
            ],
          ),
        ),
      ),
    );
  }
}
