import '../notifications_general_page/widgets/listlogo_one_item_widget.dart';import 'bloc/notifications_general_bloc.dart';import 'models/listlogo_one_item_model.dart';import 'models/notifications_general_model.dart';import 'package:bulle_s_application1/core/app_export.dart';import 'package:flutter/material.dart';class NotificationsGeneralPage extends StatefulWidget {const NotificationsGeneralPage({Key? key}) : super(key: key);

@override NotificationsGeneralPageState createState() =>  NotificationsGeneralPageState();
static Widget builder(BuildContext context) { return BlocProvider<NotificationsGeneralBloc>(create: (context) => NotificationsGeneralBloc(NotificationsGeneralState(notificationsGeneralModelObj: NotificationsGeneralModel()))..add(NotificationsGeneralInitialEvent()), child: NotificationsGeneralPage()); } 
 }
class NotificationsGeneralPageState extends State<NotificationsGeneralPage> with  AutomaticKeepAliveClientMixin<NotificationsGeneralPage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA70001, child: Padding(padding: getPadding(left: 24, top: 24, right: 24), child: BlocSelector<NotificationsGeneralBloc, NotificationsGeneralState, NotificationsGeneralModel?>(selector: (state) => state.notificationsGeneralModelObj, builder: (context, notificationsGeneralModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: getPadding(top: 7.5, bottom: 7.5), child: SizedBox(width: getHorizontalSize(323), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.indigo50)));}, itemCount: notificationsGeneralModelObj?.listlogoOneItemList.length ?? 0, itemBuilder: (context, index) {ListlogoOneItemModel model = notificationsGeneralModelObj?.listlogoOneItemList[index] ?? ListlogoOneItemModel(); return ListlogoOneItemWidget(model);});}))))); } 
 }
