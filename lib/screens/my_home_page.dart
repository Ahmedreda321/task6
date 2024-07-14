import 'package:flutter/material.dart';
import 'package:task2/models/fast_filter_bar_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // SizedBox(
            //   height: ,
            // ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(55),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                //  physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: fastFilterBarList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container();
                  //FastFilterBarWidget(
                  //   fastFilterBarModel: fastFilterBarList[index],
                  // );
                },
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
