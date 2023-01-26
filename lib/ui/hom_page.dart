import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/car_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadData(context),
      builder: (context, AsyncSnapshot snap) {
        return ListView.builder(
          itemCount: snap.data.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(snap.data[index].car_name),
            );
          },
        );
      },
    );
  }

  Future loadData(BuildContext context) async {
    var readJson = await DefaultAssetBundle.of(context)
        .loadString("assets/data/local_data.json");
    List<Car> carList =
        (json.decode(readJson) as List).map((e) => Car.fromJson(e)).toList();
    return carList;
  }
}
