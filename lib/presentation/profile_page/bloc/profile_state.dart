// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

/// Represents the state of Profile in the application.
class ProfileState extends Equatable {
  ProfileState({
    this.opentowork = false,
    this.profileModelObj,
  });

  ProfileModel? profileModelObj;

  bool opentowork;

  @override
  List<Object?> get props => [
        opentowork,
        profileModelObj,
      ];
  ProfileState copyWith({
    bool? opentowork,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      opentowork: opentowork ?? this.opentowork,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
