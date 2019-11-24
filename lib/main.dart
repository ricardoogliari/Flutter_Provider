import 'package:flutter/material.dart';
import 'package:flutter_fiap_shift/catalogo.dart';
import 'package:flutter_fiap_shift/model.dart';
import 'package:provider/provider.dart';

void main() => runApp(
    ChangeNotifierProvider(
      builder: (context) => ShiftModel(),
      child: MyApp()
    )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CatalogoPage(),
    );
  }
}

