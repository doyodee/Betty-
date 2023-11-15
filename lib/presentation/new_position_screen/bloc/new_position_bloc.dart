import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bulle_s_application1/presentation/new_position_screen/models/new_position_model.dart';part 'new_position_event.dart';part 'new_position_state.dart';/// A bloc that manages the state of a NewPosition according to the event that is dispatched to it.
class NewPositionBloc extends Bloc<NewPositionEvent, NewPositionState> {NewPositionBloc(NewPositionState initialState) : super(initialState) { on<NewPositionInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<NewPositionState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(NewPositionInitialEvent event, Emitter<NewPositionState> emit, ) async  { emit(state.copyWith(frameOneController: TextEditingController(), nameController: TextEditingController(), locationController: TextEditingController(), groupTwentySeveController: TextEditingController())); emit(state.copyWith(newPositionModelObj: state.newPositionModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
