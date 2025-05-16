import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/model/pessoa.dart';

class ScreenDetails extends StatelessWidget {
  final Pessoa pessoa;

  const ScreenDetails({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen One"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Text(pessoa.name),
    );
  }
}
