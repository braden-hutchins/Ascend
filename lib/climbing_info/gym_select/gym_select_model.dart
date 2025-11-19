import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'gym_select_widget.dart' show GymSelectWidget;
import 'package:flutter/material.dart';

class GymSelectModel extends FlutterFlowModel<GymSelectWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
