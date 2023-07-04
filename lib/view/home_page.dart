import 'package:flutter/material.dart';
import 'package:mvp_pattern_calculator/presnter/sample_presnter.dart';
import 'package:mvp_pattern_calculator/view/interface_class.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements interfaceClass {
  double _result=0;
  @override
  Widget build(BuildContext context) {
    SamplePresentor _presentor=SamplePresentor(this);
    // this return to interfaceClass

    return Scaffold(
      appBar: AppBar(
        title: Text("mvp pattern byu flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${_result}"),
            ElevatedButton(
              onPressed: () {
                _presentor.multi(4, 5);
              },
              child: Text("click here"),
            ),
          ],
        ),
      ),
    );
  }
  @override
  void updateViewResult(double result) {
    setState(() {
      _result=result;
    });
    // TODO: implement updateViewResult
  }
}

/// mvp
/// model
/// view -> interfaceclass
/// presenter