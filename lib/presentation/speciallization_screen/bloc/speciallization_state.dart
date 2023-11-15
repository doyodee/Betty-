// ignore_for_file: must_be_immutable

part of 'speciallization_bloc.dart';

/// Represents the state of Speciallization in the application.
class SpeciallizationState extends Equatable {
  SpeciallizationState({
    this.designcreative = false,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.speciallizationModelObj,
  });

  SpeciallizationModel? speciallizationModelObj;

  bool designcreative;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  @override
  List<Object?> get props => [
        designcreative,
        radioGroup,
        radioGroup1,
        radioGroup2,
        speciallizationModelObj,
      ];
  SpeciallizationState copyWith({
    bool? designcreative,
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    SpeciallizationModel? speciallizationModelObj,
  }) {
    return SpeciallizationState(
      designcreative: designcreative ?? this.designcreative,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      speciallizationModelObj:
          speciallizationModelObj ?? this.speciallizationModelObj,
    );
  }
}
