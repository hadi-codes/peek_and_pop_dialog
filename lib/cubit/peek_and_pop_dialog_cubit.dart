import 'package:flutter_bloc/flutter_bloc.dart';

class PeekAndPopDialogCubit extends Cubit<bool> {
  PeekAndPopDialogCubit() : super(false);
  void updateState() {
    emit(!state);
  }
}
