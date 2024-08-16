import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_counter_app/Counterprovider.dart';
import 'package:provider_sample_counter_app/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // List<int> numbers = [1];

  @override
  Widget build(BuildContext context) {
    return Consumer<Counterprovider>(
      builder: (context, toChangenumber, child) => Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Counter app (${toChangenumber.numbers.last})'),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(
              //   numbers.last.toString(),
              //   style: TextStyle(fontSize: 40),
              // ),
              Expanded(
                  child: toChangenumber.numbers.isNotEmpty
                      ? ListView.builder(
                          itemCount: toChangenumber.numbers.length,
                          itemBuilder: (context, index) => Center(
                            child: SizedBox(
                              width: double.infinity,
                              child: Card(
                                color: Colors.black,
                                child: Center(
                                  child: Text(
                                    toChangenumber.numbers[index].toString(),
                                    style: const TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Center(
                          child: Text('No Numbers Avialble to remove'),
                        )),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()));
                    },
                    child: const Text('second')),
              )
            ],
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              toChangenumber.numbers.length!=1?
              FloatingActionButton(
                onPressed: () {
                  if (toChangenumber.numbers.length >1) {
                    toChangenumber.minus();
                  }
                  else{
                    print('hii');
                  }
                },
                backgroundColor: Colors.white,
                child: const Icon(Icons.remove),
              ):SizedBox(),
              SizedBox(
                width: 10,
              ),
              
              FloatingActionButton(
                onPressed: () {
                  toChangenumber.add();
                },
                backgroundColor: Colors.white,
                child: const Icon(Icons.add),
              )
            ],
          )),
    );
  }
}
