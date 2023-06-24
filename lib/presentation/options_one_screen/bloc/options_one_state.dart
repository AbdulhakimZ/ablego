// ignore_for_file: must_be_immutable

part of 'options_one_bloc.dart';

/// Represents the state of OptionsOne in the application.
class OptionsOneState extends Equatable {
  OptionsOneState({this.optionsOneModelObj});

  OptionsOneModel? optionsOneModelObj;

  @override
  List<Object?> get props => [
        optionsOneModelObj,
      ];
  OptionsOneState copyWith({OptionsOneModel? optionsOneModelObj}) {
    return OptionsOneState(
      optionsOneModelObj: optionsOneModelObj ?? this.optionsOneModelObj,
    );
  }
}
