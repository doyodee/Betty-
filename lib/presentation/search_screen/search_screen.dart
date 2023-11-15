import '../search_screen/widgets/search_item_widget.dart';import 'bloc/search_bloc.dart';import 'models/search_item_model.dart';import 'models/search_model.dart';import 'package:bulle_s_application1/core/app_export.dart';import 'package:bulle_s_application1/widgets/app_bar/appbar_image.dart';import 'package:bulle_s_application1/widgets/app_bar/appbar_title.dart';import 'package:bulle_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:bulle_s_application1/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class SearchScreen extends StatelessWidget {const SearchScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SearchBloc>(create: (context) => SearchBloc(SearchState(searchModelObj: SearchModel()))..add(SearchInitialEvent()), child: SearchScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: getHorizontalSize(48), leading: AppbarImage(svgPath: ImageConstant.imgGroup162799, margin: getMargin(left: 24, top: 13, bottom: 13), onTap: () {onTapArrowbackone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_find_jobs".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 24, right: 24), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [BlocSelector<SearchBloc, SearchState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(margin: getMargin(top: 30), controller: searchController, hintText: "lbl_search".tr, hintStyle: CustomTextStyles.titleMediumBluegray400, prefix: Container(margin: getMargin(left: 16, top: 17, right: 8, bottom: 17), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(52)), suffix: Container(margin: getMargin(left: 30, top: 17, right: 16, bottom: 17), child: CustomImageView(svgPath: ImageConstant.imgFilterPrimary)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(52)));}), Expanded(child: Padding(padding: getPadding(top: 24), child: BlocSelector<SearchBloc, SearchState, SearchModel?>(selector: (state) => state.searchModelObj, builder: (context, searchModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(12));}, itemCount: searchModelObj?.searchItemList.length ?? 0, itemBuilder: (context, index) {SearchItemModel model = searchModelObj?.searchItemList[index] ?? SearchItemModel(); return SearchItemWidget(model);});}))), GestureDetector(onTap: () {onTapView(context);}, child: Container(height: getVerticalSize(148), width: getHorizontalSize(327), decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(16)), border: Border.all(color: appTheme.indigo50, width: getHorizontalSize(1)))))])))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowbackone(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the jobDetailsTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the jobDetailsTabContainerScreen.
onTapView(BuildContext context) { NavigatorService.pushNamed(AppRoutes.jobDetailsTabContainerScreen, ); } 
 }
