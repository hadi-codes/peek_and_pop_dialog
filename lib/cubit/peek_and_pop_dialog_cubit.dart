import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'peek_and_pop_dialog_state.dart';

class PeekAndPopDialogCubit extends Cubit<PeekAndPopDialogState> {
  PeekAndPopDialogCubit(this.isVisable)
      : super(PeekAndPopDialogState(isVisble: false));
  bool isVisable;
  void show() {
    this.isVisable = true;
    emit(PeekAndPopDialogState(
      isVisble: isVisable,
    ));
  }

  void hide() {
    this.isVisable = false;
    emit(PeekAndPopDialogState(isVisble: isVisable));
  }
}
