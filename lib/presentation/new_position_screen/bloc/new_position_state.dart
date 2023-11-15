// ignore_for_file: must_be_immutable

part of 'new_position_bloc.dart';

/// Represents the state of NewPosition in the application.
class NewPositionState extends Equatable {
  NewPositionState({
    this.frameOneController,
    this.nameController,
    this.locationController,
    this.groupTwentySeveController,
    this.selectedDropDownValue,
    this.newPositionModelObj,
  });

  TextEditingController? frameOneController;

  TextEditingController? nameController;

  TextEditingController? locationController;

  TextEditingController? groupTwentySeveController;

  SelectionPopupModel? selectedDropDownValue;

  NewPositionModel? newPositionModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        nameController,
        locationController,
        groupTwentySeveController,
        selectedDropDownValue,
        newPositionModelObj,
      ];
  NewPositionState copyWith({
    TextEditingController? frameOneController,
    TextEditingController? nameController,
    TextEditingController? locationController,
    TextEditingController? groupTwentySeveController,
    SelectionPopupModel? selectedDropDownValue,
    NewPositionModel? newPositionModelObj,
  }) {
    return NewPositionState(
      frameOneController: frameOneController ?? this.frameOneController,
      nameController: nameController ?? this.nameController,
      locationController: locationController ?? this.locationController,
      groupTwentySeveController:
          groupTwentySeveController ?? this.groupTwentySeveController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      newPositionModelObj: newPositionModelObj ?? this.newPositionModelObj,
    );
  }
}
