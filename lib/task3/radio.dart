import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  int selectedIndex = 0;
  List data=[
    'radio buttuon',
    'radio buttuon',
    'radio buttuon',
    'radio buttuon', 'radio buttuon', 'radio buttuon', 'radio buttuon', 'radio buttuon', 'radio buttuon', 'radio buttuon',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [

            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: data.length,
                  itemBuilder: (context,index){
                  return RadioListTile(
                    title: Text(data[index]),
                    value: index,
                    groupValue:selectedIndex,
                    onChanged: (value) {
                      setState(() {
                        selectedIndex = value as int;
                      });
                    },
                  );
                }
              ),
            ),
        ],
      ),
    );
  }
}