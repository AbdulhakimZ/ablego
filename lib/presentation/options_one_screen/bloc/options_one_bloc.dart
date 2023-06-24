import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ablego/presentation/options_one_screen/models/options_one_model.dart';
part 'options_one_event.dart';
part 'options_one_state.dart';

/// A bloc that manages the state of a OptionsOne according to the event that is dispatched to it.
class OptionsOneBloc extends Bloc<OptionsOneEvent, OptionsOneState> {
  OptionsOneBloc(OptionsOneState initialState) : super(initialState) {
    on<OptionsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OptionsOneInitialEvent event,
    Emitter<OptionsOneState> emit,
  ) async {}
}
