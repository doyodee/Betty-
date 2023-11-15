// ignore_for_file: must_be_immutable

part of 'add_new_education_bloc.dart';

/// Represents the state of AddNewEducation in the application.
class AddNewEducationState extends Equatable {
  AddNewEducationState({
    this.frameOneController,
    this.frameoneoneController,
    this.frameonetwoController,
    this.groupEightyOneController,
    this.selectedDropDownValue,
    this.addNewEducationModelObj,
  });

  TextEditingController? frameOneController;

  TextEditingController? frameoneoneController;

  TextEditingController? frameonetwoController;

  TextEditingController? groupEightyOneController;

  SelectionPopupModel? selectedDropDownValue;

  AddNewEducationModel? addNewEducationModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        frameoneoneController,
        frameonetwoController,
        groupEightyOneController,
        selectedDropDownValue,
        addNewEducationModelObj,
      ];
  AddNewEducationState copyWith({
    TextEditingController? frameOneController,
    TextEditingController? frameoneoneController,
    TextEditingController? frameonetwoController,
    TextEditingController? groupEightyOneController,
    SelectionPopupModel? selectedDropDownValue,
    AddNewEducationModel? addNewEducationModelObj,
  }) {
    return AddNewEducationState(
      frameOneController: frameOneController ?? this.frameOneController,
      frameoneoneController:
          frameoneoneController ?? this.frameoneoneController,
      frameonetwoController:
          frameonetwoController ?? this.frameonetwoController,
      groupEightyOneController:
          groupEightyOneController ?? this.groupEightyOneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      addNewEducationModelObj:
          addNewEducationModelObj ?? this.addNewEducationModelObj,
    );
  }
}
