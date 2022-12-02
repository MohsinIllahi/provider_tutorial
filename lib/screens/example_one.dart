import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorials/provider/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {
  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Multi Provider Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          }),
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                    child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.value)),
                  child: Center(
                      child: Text(
                    'Container 1',
                    style: TextStyle(fontSize: 20),
                  )),
                )),
                Expanded(
                    child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(value.value)),
                  child: Center(
                      child: Text(
                    'Container 2',
                    style: TextStyle(fontSize: 20),
                  )),
                )),
              ],
            );
          }),
        ],
      ),
    );
  }
}
