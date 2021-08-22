library peek_and_pop_dialog;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/peek_and_pop_dialog_cubit.dart';
import 'overlay/overlay_dialog.dart';

class PeekAndPopDialog extends StatefulWidget {
  const PeekAndPopDialog({
    Key? key,
    required this.child,
    required this.dialog,
  }) : super(key: key);
  final Widget child;
  final Widget dialog;

  @override
  State<PeekAndPopDialog> createState() => _PeekAndPopDialogState();
}

class _PeekAndPopDialogState extends State<PeekAndPopDialog> {
  final bloc = PeekAndPopDialogCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<PeekAndPopDialogCubit, bool>(
        listener: (context, isVisble) async {
          if (isVisble)
            DialogHelper().show(context,
                DialogWidget.custom(closable: true, child: widget.dialog));
          else
            DialogHelper().hide(context);
        },
        builder: (context, state) {
          return GestureDetector(
            onLongPressStart: (_) => bloc.show(),
            onLongPressEnd: (_) => bloc.hide(),
            child: widget.child,
          );
        },
      ),
    );
  }
}
