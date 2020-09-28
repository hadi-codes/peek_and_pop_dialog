library peek_and_pop_dialog;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_dialog/overlay_dialog.dart';

import 'cubit/peek_and_pop_dialog_cubit.dart';

class PeekAndPopDialog extends StatelessWidget {
  const PeekAndPopDialog({
    Key key,
    @required this.child,
    @required this.dialog,
  })  : assert(child != null, dialog != null),
        super(key: key);
  final Widget child;
  final Widget dialog;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PeekAndPopDialogCubit(false),
      child: BlocConsumer<PeekAndPopDialogCubit, PeekAndPopDialogState>(
        listener: (context, state) async {
          if (state.isVisble)
            DialogHelper().show(
                context, DialogWidget.custom(closable: true, child: dialog));
          else
            DialogHelper().hide(context);
        },
        builder: (context, state) {
          var bloc = context.bloc<PeekAndPopDialogCubit>();
          return GestureDetector(
              onLongPressStart: (_) => bloc.show(),
              onLongPressEnd: (_) => bloc.hide(),
              child: child);
        },
      ),
    );
  }
}
