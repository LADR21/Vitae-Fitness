import 'package:working_planning/backend/schema/food_plan_record.dart';

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import 'food_plan_page_model.dart';
export 'food_plan_page_model.dart';

class FoodPlanPageWidget extends StatefulWidget {
  const FoodPlanPageWidget({super.key});

  @override
  State<FoodPlanPageWidget> createState() => _FoodPlanPageWidgetWidgetState();
}

class _FoodPlanPageWidgetWidgetState extends State<FoodPlanPageWidget> {
  late FoodPlanPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodPlanPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: const AlignmentDirectional(1, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        context.pushNamed(
                          'User',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      text: '',
                      icon: const Icon(
                        Icons.person,
                        size: 30,
                      ),
                      options: FFButtonOptions(
                        height: 40,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: const Color(0x00FFFFFF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '',
                        icon: const Icon(
                          Icons.question_mark,
                          color: Color(0xFF090909),
                          size: 30,
                        ),
                        options: FFButtonOptions(
                          height: 43,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16, 0, 16, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: const Color(0x00FFFFFF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/gy-removebg-preview.png',
                          width: 227,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Container(
                          width: 398,
                          height: 476,
                          decoration: const BoxDecoration(),
                          alignment: const AlignmentDirectional(0, 0),
                          child: Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Food Plan',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat(
                                            "MMMEd", _model.datePicked),
                                        'Day,Mount 0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 20,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    // Generated code for this Button Widget...
                                    FFButtonWidget(
                                      onPressed: () async {
                                        final _datePickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2050),
                                          builder: (context, child) {
                                            return wrapInMaterialDatePickerTheme(
                                              context,
                                              child!,
                                              headerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              headerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              headerTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 32,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              pickerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              pickerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 24,
                                            );
                                          },
                                        );
                                        if (_datePickedDate != null) {
                                          safeSetState(() {
                                            _model.datePicked = DateTime(
                                              _datePickedDate.year,
                                              _datePickedDate.month,
                                              _datePickedDate.day,
                                            );
                                          });
                                        }
                                      },
                                      text: '',
                                      icon: const Icon(
                                        Icons.calendar_month,
                                        size: 30,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40,
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(16, 0, 16, 0),
                                        iconPadding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 0),
                                        color: const Color(0x004B39EF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF0B0B0B),
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'BreakFast',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 18,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          StreamBuilder<List<FoodPlanRecord>>(
                                            stream: queryFoodPlanRecord(
                                              queryBuilder: (foodPlanRecord) =>
                                                  foodPlanRecord.where(
                                                'Date',
                                                isEqualTo: dateTimeFormat(
                                                    "MMMEd", _model.datePicked),
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<FoodPlanRecord>
                                                  textFoodPlanRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final textFoodPlanRecord =
                                                  textFoodPlanRecordList
                                                          .isNotEmpty
                                                      ? textFoodPlanRecordList
                                                          .first
                                                      : null;

                                              return Text(
                                                valueOrDefault<String>(
                                                  textFoodPlanRecord?.breakFast,
                                                  'BreakFast',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 18,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Collation 1',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 18,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          StreamBuilder<List<FoodPlanRecord>>(
                                            stream: queryFoodPlanRecord(
                                              queryBuilder: (foodPlanRecord) =>
                                                  foodPlanRecord.where(
                                                'Date',
                                                isEqualTo: dateTimeFormat(
                                                    "MMMEd", _model.datePicked),
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<FoodPlanRecord>
                                                  textFoodPlanRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final textFoodPlanRecord =
                                                  textFoodPlanRecordList
                                                          .isNotEmpty
                                                      ? textFoodPlanRecordList
                                                          .first
                                                      : null;

                                              return Text(
                                                valueOrDefault<String>(
                                                  textFoodPlanRecord
                                                      ?.collation1,
                                                  'Collation 1',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 18,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Meal',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 18,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          StreamBuilder<List<FoodPlanRecord>>(
                                            stream: queryFoodPlanRecord(
                                              queryBuilder: (foodPlanRecord) =>
                                                  foodPlanRecord.where(
                                                'Date',
                                                isEqualTo: dateTimeFormat(
                                                    "MMMEd", _model.datePicked),
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<FoodPlanRecord>
                                                  textFoodPlanRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final textFoodPlanRecord =
                                                  textFoodPlanRecordList
                                                          .isNotEmpty
                                                      ? textFoodPlanRecordList
                                                          .first
                                                      : null;

                                              return Text(
                                                valueOrDefault<String>(
                                                  textFoodPlanRecord?.meal,
                                                  'Meal',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 18,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Collation 2',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 18,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          StreamBuilder<List<FoodPlanRecord>>(
                                            stream: queryFoodPlanRecord(
                                              queryBuilder: (foodPlanRecord) =>
                                                  foodPlanRecord.where(
                                                'Date',
                                                isEqualTo: dateTimeFormat(
                                                    "MMMEd", _model.datePicked),
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<FoodPlanRecord>
                                                  textFoodPlanRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final textFoodPlanRecord =
                                                  textFoodPlanRecordList
                                                          .isNotEmpty
                                                      ? textFoodPlanRecordList
                                                          .first
                                                      : null;

                                              return Text(
                                                valueOrDefault<String>(
                                                  textFoodPlanRecord
                                                      ?.collation2,
                                                  'Collation2',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 18,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Dinner',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 18,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          StreamBuilder<List<FoodPlanRecord>>(
                                            stream: queryFoodPlanRecord(
                                              queryBuilder: (foodPlanRecord) =>
                                                  foodPlanRecord.where(
                                                'Date',
                                                isEqualTo: dateTimeFormat(
                                                    "MMMEd", _model.datePicked),
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<FoodPlanRecord>
                                                  textFoodPlanRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final textFoodPlanRecord =
                                                  textFoodPlanRecordList
                                                          .isNotEmpty
                                                      ? textFoodPlanRecordList
                                                          .first
                                                      : null;

                                              return Text(
                                                valueOrDefault<String>(
                                                  textFoodPlanRecord?.dinner,
                                                  'Dinner',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 18,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        context.pushNamed('ObjectPageC');
                      },
                      text: 'Menu',
                      icon: const Icon(
                        Icons.menu,
                        size: 26,
                      ),
                      options: FFButtonOptions(
                        height: 40,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: const Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF0F0F0F),
                                  fontSize: 20,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        context.pushNamed('WorkOutPage');
                      },
                      text: 'WorkOut',
                      icon: const Icon(
                        Icons.directions_run_sharp,
                        size: 26,
                      ),
                      options: FFButtonOptions(
                        height: 40,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: const Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF0F0F0F),
                                  fontSize: 20,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
