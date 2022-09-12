import 'package:solid_idp/refactor/interfaces/logger_interface.dart';
import 'package:solid_idp/refactor/interfaces/message_sender.dart';
import 'package:solid_idp/refactor/interfaces/person_interface.dart';
import 'package:solid_idp/refactor/interfaces/task_interface.dart';

class Task implements TaskInterface {
  LoggerInterface log;
  MessageSender emailer;

  Task(this.log, this.emailer);
  @override
  double? hoursWorked;

  @override
  bool isComplete = false;

  @override
  String? taskName;

  @override
  PersonInterface? person;

  @override
  void performWork(double hour) {
    hoursWorked = hour;
    log.log('Performing work on $taskName');
  }

  @override
  void completeTask() {
    isComplete = true;
    log.log('$taskName is complete');

    emailer.sendMessage(person!, '$taskName completed worked $hoursWorked');
  }
}
