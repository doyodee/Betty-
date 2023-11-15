import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listlogo_one_item_model.dart';import 'package:bulle_s_application1/presentation/notifications_general_page/models/notifications_general_model.dart';part 'notifications_general_event.dart';part 'notifications_general_state.dart';/// A bloc that manages the state of a NotificationsGeneral according to the event that is dispatched to it.
class NotificationsGeneralBloc extends Bloc<NotificationsGeneralEvent, NotificationsGeneralState> {NotificationsGeneralBloc(NotificationsGeneralState initialState) : super(initialState) { on<NotificationsGeneralInitialEvent>(_onInitialize); }

_onInitialize(NotificationsGeneralInitialEvent event, Emitter<NotificationsGeneralState> emit, ) async  { emit(state.copyWith(notificationsGeneralModelObj: state.notificationsGeneralModelObj?.copyWith(listlogoOneItemList: fillListlogoOneItemList()))); } 
List<ListlogoOneItemModel> fillListlogoOneItemList() { return List.generate(4, (index) => ListlogoOneItemModel()); } 
 }
