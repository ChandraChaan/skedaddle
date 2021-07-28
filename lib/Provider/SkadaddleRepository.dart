
import 'package:skedaddle/Provider/SkadaddleAdapter.dart';
import 'package:skedaddle/Provider/SkadaddleProvider.dart';
class SkadaddleRepository implements ISkadaddleRepository {
  SkadaddleRepository({this.provider});
  final ISkadaddleProvider provider;

  @override
  dynamic(dynamic) async {
    var response = await provider.dynamic(dynamic);
    if (response.results == null) {
      if(response.responseOther != null)
        return Future.error(response.responseOther);
      else
        return Future.error(response.error);
    } else {
       return response;
    }
  }

  // @override
  // Future<DashBoardModal> getDashboardList(dynamic) async {
  //   var response = await provider.dynamic(dynamic);
  //   if (response.unAssign == null && response.assign == null) {
  //     if(response.responseOther != null)
  //       return Future.error(response.responseOther.toString());
  //     else
  //       return Future.error(response.error.toString());
  //   } else {
  //     return response;
  //   }
  // }



}