import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bulle_s_application1/presentation/sign_up_complete_account_screen/models/sign_up_complete_account_model.dart';import 'package:bulle_s_application1/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';import 'package:bulle_s_application1/data/models/registerDeviceAuth/post_register_device_auth_req.dart';import 'dart:async';import 'package:bulle_s_application1/data/repository/repository.dart';import 'package:bulle_s_application1/core/constants/user.dart';import 'package:bulle_s_application1/core/constants/role.dart';part 'sign_up_complete_account_event.dart';part 'sign_up_complete_account_state.dart';/// A bloc that manages the state of a SignUpCompleteAccount according to the event that is dispatched to it.
class SignUpCompleteAccountBloc extends Bloc<SignUpCompleteAccountEvent, SignUpCompleteAccountState> {SignUpCompleteAccountBloc(SignUpCompleteAccountState initialState) : super(initialState) { on<SignUpCompleteAccountInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);on<CreateRegisterEvent>(_callRegisterDeviceAuth); }

final _repository = Repository();

var postRegisterDeviceAuthResp = PostRegisterDeviceAuthResp();

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUpCompleteAccountState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(SignUpCompleteAccountInitialEvent event, Emitter<SignUpCompleteAccountState> emit, ) async  { emit(state.copyWith(firstNameController: TextEditingController(), lastNameController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); } 
/// Calls [https://nodedemo.dhiwise.co/device/auth/register] with the provided event and emits the state.
///
/// The [CreateRegisterEvent] parameter is used for handling event data
/// The [emit] parameter is used for emitting the state
///
/// Throws an error if an error occurs during the API call process.
FutureOr<void> _callRegisterDeviceAuth(CreateRegisterEvent event, Emitter<SignUpCompleteAccountState> emit, ) async  { var postRegisterDeviceAuthReq = PostRegisterDeviceAuthReq(
username : state.lastNameController?.text ?? '' ,password : state.passwordController?.text ?? '' ,email: User.email,name : state.firstNameController?.text ?? '' ,role: Role.user,
);
await _repository.registerDeviceAuth(
headers: {'Content-Type': 'application/json',},
requestData: postRegisterDeviceAuthReq.toJson(),
)
.then((value) async {

	postRegisterDeviceAuthResp = value;
_onRegisterDeviceAuthSuccess(value,emit);
event.onCreateRegisterEventSuccess?.call();
})
.onError((error,stackTrace) {

	//implement error call
_onRegisterDeviceAuthError();
event.onCreateRegisterEventError?.call();
})
; } 
void _onRegisterDeviceAuthSuccess(PostRegisterDeviceAuthResp resp, Emitter<SignUpCompleteAccountState> emit, ) { 
PrefUtils().setId(resp.data?.id ?? '');emit(state.copyWith(signUpCompleteAccountModelObj: state.signUpCompleteAccountModelObj?.copyWith(),),); } 
void _onRegisterDeviceAuthError() { 
 //implement error method body...
 } 
 }
