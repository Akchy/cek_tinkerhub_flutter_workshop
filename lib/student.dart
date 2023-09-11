import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  Students({super.key});

  List<String> names = ['Amtul Rauf', 'Johan George', 'Amith Kurian', 'Amina Aneefa', 'Abhirami Ramesh'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: names.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                color: Colors.blue[200],
                margin: EdgeInsets.all(10),
                child: Text('Name: ${names[index]}'),
              );
            }
        ),
      )

      /*Container(
        child: const Column(
          children: [
            Text('Amtul Rauf'),
            Text('Johan George'),
            Text('Amith Kurian'),
            Text('Amina Aneefa'),
            Text('Abhirami Ramesh'),
          ],
        ),
      )*/,
    );
  }
}
