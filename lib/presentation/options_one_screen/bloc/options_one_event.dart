// ignore_for_file: must_be_immutable

part of 'options_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OptionsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OptionsOneEvent extends Equatable {}

/// Event that is dispatched when the OptionsOne widget is first created.
class OptionsOneInitialEvent extends OptionsOneEvent {
  @override
  List<Object?> get props => [];
}
