import 'package:genone_web_flutter/data/model/requests/user_request.dart';
import 'package:genone_web_flutter/data/providers/realtime_database.dart';
import 'package:genone_web_flutter/utils/app_constant.dart';

class RegisterUserRepository {

  RealtimeDatabase realtimeSend = RealtimeDatabase();

  Future sendNewUserDetails({required userSendInfo}) => realtimeSend.create(AppConstant.userinfoRealTime, userSendInfo);
}