import 'package:cek_tinkerhub/drawerWidget.dart';
import 'package:cek_tinkerhub/home.dart';
import 'package:cek_tinkerhub/profile.dart';
import 'package:flutter/material.dart';

class Convert extends StatefulWidget {
  const Convert({super.key});

  @override
  State<Convert> createState() => _ConvertState();
}

class _ConvertState extends State<Convert> {

  TextEditingController dollarController = TextEditingController();
  double inrValue =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Convert')),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: dollarController,
              decoration: InputDecoration(
                hintText: '\$500',
                label: const Text('Enter Dollar Value'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),
            ),
          ),
          MaterialButton(
            onPressed: (){
              setState(() {
                inrValue = double.parse(dollarController.text)*80;
              });

              print('INR Value: $inrValue');
          },
            color: Colors.red,
            child: const Text('Convert'),
          ),
          Text('INR $inrValue'),
        ],
      ),
    );
  }
}
