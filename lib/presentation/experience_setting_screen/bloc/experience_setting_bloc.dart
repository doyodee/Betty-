import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/experience_item_model.dart';import 'package:bulle_s_application1/presentation/experience_setting_screen/models/experience_setting_model.dart';part 'experience_setting_event.dart';part 'experience_setting_state.dart';/// A bloc that manages the state of a ExperienceSetting according to the event that is dispatched to it.
class ExperienceSettingBloc extends Bloc<ExperienceSettingEvent, ExperienceSettingState> {ExperienceSettingBloc(ExperienceSettingState initialState) : super(initialState) { on<ExperienceSettingInitialEvent>(_onInitialize); }

_onInitialize(ExperienceSettingInitialEvent event, Emitter<ExperienceSettingState> emit, ) async  { emit(state.copyWith(experienceSettingModelObj: state.experienceSettingModelObj?.copyWith(experienceItemList: fillExperienceItemList()))); } 
List<ExperienceItemModel> fillExperienceItemList() { return List.generate(3, (index) => ExperienceItemModel()); } 
 }
