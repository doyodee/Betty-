// ignore_for_file: must_be_immutable

part of 'add_new_education_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddNewEducation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddNewEducationEvent extends Equatable {}

/// Event that is dispatched when the AddNewEducation widget is first created.
class AddNewEducationInitialEvent extends AddNewEducationEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AddNewEducationEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
