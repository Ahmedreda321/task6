import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit() : super(RadioInitial());
  int selectedIndex = 0;
  void selecttt(){

emit(Ra());
  }
}
