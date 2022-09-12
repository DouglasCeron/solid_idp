import 'package:solid_idp/refactor/interfaces/logger_interface.dart';

class Logger implements LoggerInterface {
  log(String? msg) {
    print(msg);
  }
}
