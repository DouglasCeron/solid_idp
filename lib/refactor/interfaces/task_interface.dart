import 'package:solid_idp/refactor/interfaces/person_interface.dart';
import 'package:solid_idp/refactor/person.dart';

abstract class TaskInterface {
  String? taskName;
  PersonInterface? person;
  double? hoursWorked;
  bool isComplete = false;

  void performWork(double hour);

  void completeTask();
}
