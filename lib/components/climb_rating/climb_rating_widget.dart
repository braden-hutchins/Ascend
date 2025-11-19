import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'climb_rating_model.dart';
export 'climb_rating_model.dart';

class ClimbRatingWidget extends StatefulWidget {
  const ClimbRatingWidget({
    super.key,
    double? rating,
    required this.docRef,
  }) : this.rating = rating ?? 0.0;

  final double rating;
  final DocumentReference? docRef;

  @override
  State<ClimbRatingWidget> createState() => _ClimbRatingWidgetState();
}

class _ClimbRatingWidgetState extends State<ClimbRatingWidget> {
  late ClimbRatingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClimbRatingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: RatingBar.builder(
        onRatingUpdate: (newValue) async {
          safeSetState(() => _model.ratingBarValue = newValue);

          await widget.docRef!.update(createClimbsRecordData(
            rating: _model.ratingBarValue?.round(),
          ));
        },
        itemBuilder: (context, index) => Icon(
          Icons.star_rounded,
          color: FlutterFlowTheme.of(context).primary,
        ),
        direction: Axis.horizontal,
        initialRating: _model.ratingBarValue ??= widget.rating,
        unratedColor: FlutterFlowTheme.of(context).accent1,
        itemCount: 5,
        itemSize: 24.0,
        glowColor: FlutterFlowTheme.of(context).primary,
      ),
    );
  }
}
