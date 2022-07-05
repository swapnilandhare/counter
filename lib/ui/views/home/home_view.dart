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
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text(
              "Current count is ${model.count}",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(
              height: 170,
            ),
            ElevatedButton(
              onPressed: model.gotoWelcome,
              child: Text("Click me"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
          child: Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
