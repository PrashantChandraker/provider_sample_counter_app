import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_counter_app/Counterprovider.dart';

class SecondScreen extends StatefulWidget {
  
   SecondScreen({super.key,});
 
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Consumer<Counterprovider>(
      builder: ( context,  toChangeNumber,  child) =>
      Scaffold(
          backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Second Screen'),
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
              child: ListView.builder(
                itemCount:toChangeNumber.numbers.length,
                itemBuilder: (context, index) => Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          toChangeNumber.numbers[index].toString(),
                          style: const TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
           
          ],
        ),
      
       floatingActionButton: FloatingActionButton(
          onPressed: () {
           toChangeNumber.add();
          },
          backgroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
