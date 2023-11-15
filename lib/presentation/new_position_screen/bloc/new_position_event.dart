// ignore_for_file: must_be_immutable

part of 'new_position_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewPosition widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewPositionEvent extends Equatable {}

/// Event that is dispatched when the NewPosition widget is first created.
class NewPositionInitialEvent extends NewPositionEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends NewPositionEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
