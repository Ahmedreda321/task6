import 'package:flutter/material.dart';

class FastFilterBarSetstate extends StatefulWidget {
  const FastFilterBarSetstate({super.key});

  @override
  State<FastFilterBarSetstate> createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBarSetstate> {
  List data = ['قيد التنفيذ ', 'الملغيه', 'المكتمله', 'تحت المراجعه', 'تمت'];
  int? click;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          click = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                              color:
                                  click == index ? Colors.red : Colors.black12,
                              borderRadius: BorderRadius.circular(20)),
                          height: 70,
                          width: 200,
                          child: Center(
                            child: Text(
                              data[index],
                              style: const TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
