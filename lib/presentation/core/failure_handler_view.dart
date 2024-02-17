import 'package:flutter/material.dart';

class FailureHandlerView extends StatefulWidget {
  const FailureHandlerView({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<FailureHandlerView> createState() => _FailureHandlerViewState();
}

class _FailureHandlerViewState extends State<FailureHandlerView> {
  // late FailureController _failureController;
  // Failure? _currentFailure;

  @override
  void initState() {
    // _failureController = context.read<FailureController>();

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   _failureController.addListener(() async {
    //     // For some reason, showToast is throwing an exception here.
    //     try {
    //       if (_currentFailure == null && _failureController.hasFailure) {
    //         _currentFailure = _failureController.currentFailure;

    //         // todo: replace with logger.
    //         print('Failure: ${_currentFailure?.errorMessage}');

    //         _currentFailure = null;
    //         _failureController.onFailureShown();
    //       }
    //     } catch (e) {
    //       print('ATTENTION!! FAILURE ON FAILURE!! WTF!: $e');
    //     }
    //   });
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
