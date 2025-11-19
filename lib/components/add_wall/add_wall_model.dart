import '/flutter_flow/flutter_flow_util.dart';
import 'add_wall_widget.dart' show AddWallWidget;
import 'package:flutter/material.dart';

class AddWallModel extends FlutterFlowModel<AddWallWidget> {
  ///  State fields for stateful widgets in this component.

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
