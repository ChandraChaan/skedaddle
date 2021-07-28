
import 'package:dio/dio.dart';

class NetworkDataClass {
  String baseUrl, extendedUrl, requestType;
  bool isCookie,needCookies;
  var param;
  Options options;

  NetworkDataClass({this.baseUrl,this.extendedUrl,this.isCookie = false,this.param,this.requestType,this.options, this.needCookies = true});

}
