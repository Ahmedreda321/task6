import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_state.dart';

class ShowCubitt extends Cubit<ShowState> {
  ShowCubitt() : super(ShowInitial());
  String URl='';
  String text='';
  void ShowBloc(){


      URl='asset/images/bulb.png';
      text='';
      emit(Bloc());
    }
  void ShowCircle(){

      URl='asset/images/idea (1).png';
      text='';
emit(Circle());

  }
  void ShowText(){

      URl='';
      text='the text';
      emit(ttext());
 }
  void Reset(){

      URl='';
      text='';
      emit(reset());

  }
}
