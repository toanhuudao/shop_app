import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/app_events.dart';
import 'package:shop_app/app_states.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs(): super(InitStates());

}