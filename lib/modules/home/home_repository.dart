import 'package:genone_web_flutter/data/providers/realtime_database.dart';
import 'package:genone_web_flutter/utils/app_constant.dart';

class HomeRepository {
  final RealtimeDatabase _realtimeDatabase = RealtimeDatabase();


  Future sendEmalContact({required emailContact}) => _realtimeDatabase.create(AppConstant.contactEmailRealTime, emailContact);


}