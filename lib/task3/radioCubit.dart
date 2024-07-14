import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/radio_cubit.dart';

class radioCubit extends StatelessWidget {
  const radioCubit({super.key});

  @override
  Widget build(BuildContext context) {

    List data=[
      'radio buttuon',
      'radio buttuon',
      'radio buttuon',
      'radio buttuon', 'radio buttuon', 'radio buttuon', 'radio buttuon', 'radio buttuon', 'radio buttuon', 'radio buttuon',

    ];
    RadioCubit _cubit=context.read<RadioCubit>();
    return Scaffold(
      body: Column(

        children: [
          // BlocBuilder<FastFilterBarCubit,FastFilterBarState>(
          // builder: (context,state)
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context,index){
                  return  BlocBuilder<RadioCubit,RadioState>(
                    builder: (context,state){
                      return RadioListTile(
                        title: Text(data[index]),
                        value: index,
                        groupValue:_cubit.selectedIndex,
                        onChanged: (value) {
                          _cubit.selecttt();

                            _cubit.selectedIndex = value as int;

                        },
                      );
                    }
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
