
import 'package:skedaddle/Network/SkadaddleNetwork.dart';

abstract class ISkadaddleProvider {
  dynamic(dynamic);
}

class SkadaddleProvider implements ISkadaddleProvider {
  @override
  dynamic(dynamic) => skadaddleNetwork.getAPIResponse(dynamic);
}
