import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bulle_s_application1/presentation/speciallization_screen/models/speciallization_model.dart';part 'speciallization_event.dart';part 'speciallization_state.dart';/// A bloc that manages the state of a Speciallization according to the event that is dispatched to it.
class SpeciallizationBloc extends Bloc<SpeciallizationEvent, SpeciallizationState> {SpeciallizationBloc(SpeciallizationState initialState) : super(initialState) { on<SpeciallizationInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); on<ChangeRadioButton2Event>(_changeRadioButton2); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SpeciallizationState> emit, ) { emit(state.copyWith(designcreative: event.value)); } 
_changeRadioButton(ChangeRadioButtonEvent event, Emitter<SpeciallizationState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<SpeciallizationState> emit, ) { emit(state.copyWith(radioGroup1: event.value)); } 
_changeRadioButton2(ChangeRadioButton2Event event, Emitter<SpeciallizationState> emit, ) { emit(state.copyWith(radioGroup2: event.value)); } 
List<String> fillRadioList() { return ["msg_development_it", "msg_engineering_architecture", "msg_sales_marketing"]; } 
_onInitialize(SpeciallizationInitialEvent event, Emitter<SpeciallizationState> emit, ) async  { emit(state.copyWith(designcreative: false, radioGroup: "", radioGroup1: "", radioGroup2: "")); emit(state.copyWith(speciallizationModelObj: state.speciallizationModelObj?.copyWith(radioList: fillRadioList()))); } 
 }
