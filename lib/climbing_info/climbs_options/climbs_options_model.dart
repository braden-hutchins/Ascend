import '/components/rating_slider/rating_slider_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'climbs_options_widget.dart' show ClimbsOptionsWidget;
import 'package:flutter/material.dart';

class ClimbsOptionsModel extends FlutterFlowModel<ClimbsOptionsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RatingSlider component.
  late RatingSliderModel ratingSliderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    ratingSliderModel = createModel(context, () => RatingSliderModel());
  }

  @override
  void dispose() {
    ratingSliderModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
