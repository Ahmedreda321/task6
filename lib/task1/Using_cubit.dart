import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/fast_filter_bar_cubit.dart';

// ignore: must_be_immutable
class FastFilterBarCubitt extends StatelessWidget {
  FastFilterBarCubitt({super.key});

  List data = ['قيد التنفيذ ', 'الملغيه', 'المكتمله', 'تحت المراجعه', 'تمت'];
  int? click;

  @override
  Widget build(BuildContext context) {
    FastFilterBarCubit cubit = context.read<FastFilterBarCubit>();

    // FastFilterBarCubit _cbit=BlocProvider.of<FastFilterBarCubit>(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: SizedBox(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    click = index;

                    return InkWell(
                      onTap: () {
                        cubit.takeIt(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child:
                            BlocBuilder<FastFilterBarCubit, FastFilterBarState>(
                                builder: (context, state) {
                          return Container(
                            decoration: BoxDecoration(
                                color: cubit.x(index),
                                borderRadius: BorderRadius.circular(20)),
                            height: 60,
                            width: 100,
                            child: Center(
                              child: Text(
                                data[index],
                                style: const TextStyle(fontSize: 15),
                              ),
                            ),
                          );
                        }),
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
