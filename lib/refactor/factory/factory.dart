import 'package:solid_idp/refactor/interfaces/logger_interface.dart';
import 'package:solid_idp/refactor/interfaces/message_sender.dart';
import 'package:solid_idp/refactor/interfaces/person_interface.dart';
import 'package:solid_idp/refactor/interfaces/task_interface.dart';
import 'package:solid_idp/refactor/logger.dart';
import 'package:solid_idp/refactor/mailer.dart';
import 'package:solid_idp/refactor/person.dart';
import 'package:solid_idp/refactor/task.dart';

class Factory {
  TaskInterface createTask() {
    return Task(createLogger(), createMailer());
  }

  PersonInterface createPerson() {
    return Person();
  }

  LoggerInterface createLogger() {
    return Logger();
  }

  MessageSender createMailer() {
    return Mailer();
  }
}
