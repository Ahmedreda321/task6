
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task6/task4/Cubit/show_cubit.dart';

class ShowCubit extends StatelessWidget {
  const ShowCubit({super.key});

  @override
  Widget build(BuildContext context) {
    ShowCubitt _cubit=context.read<ShowCubitt>();

    return Scaffold(

      body: Center(
      //   BlocBuilder<EyeCubit,EyeState>(
      //   builder: (context,state) {
      // return
        child: BlocBuilder<ShowCubitt,ShowState>(
            builder: (context,state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),

                if (_cubit.URl.isNotEmpty)Image.asset(_cubit.URl,width: 100,height: 100,),
                if (_cubit.text.isNotEmpty)Text(_cubit.text),
                Spacer(),
                ElevatedButton(onPressed: (){
                  _cubit.ShowBloc();
                }, child: Text('show bloc')),
                ElevatedButton(onPressed: (){
                  _cubit.ShowCircle();
                }, child: Text('show cirle')),
                ElevatedButton(onPressed: (){
                  _cubit.ShowText();
                }, child: Text('show text')),
                ElevatedButton(onPressed: (){
                  _cubit.Reset();
                }, child: Text('show reset')),


              ],
            );
          }
        ),
      ),
    );
  }
}
