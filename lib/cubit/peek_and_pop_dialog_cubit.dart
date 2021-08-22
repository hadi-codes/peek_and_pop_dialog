import 'package:flutter_bloc/flutter_bloc.dart';


class PeekAndPopDialogCubit extends Cubit<bool> {
  PeekAndPopDialogCubit() : super(false);
  void show() {
    print('PeekAndPop:$state');
    emit(true);
  }

  void hide() {
    print('PeekAndPop:$state');
    emit(false);
  }
}
