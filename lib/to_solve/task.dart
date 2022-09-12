import 'package:solid_idp/to_solve/logger.dart';
import 'package:solid_idp/to_solve/mailer.dart';
import 'package:solid_idp/to_solve/person.dart';

class Task {
  String? taskName;
  Person? person;
  double? hoursWorked;
  bool isComplete = false;

  Logger? log = Logger();
  Mailer? mailer = Mailer();

  void performWork(double hour) {
    hoursWorked = hour;
    log!.log('Performing work on $taskName');
  }

  void completeTask() {
    isComplete = true;
    log!.log('$taskName is complete');
  }
}
