import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Center(
            child: Text(
          "Current count is ${model.count}",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
          child: Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
