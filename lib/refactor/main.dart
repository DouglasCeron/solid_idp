import 'package:solid_idp/refactor/factory/factory.dart';
import 'package:solid_idp/refactor/interfaces/person_interface.dart';
import 'package:solid_idp/refactor/interfaces/task_interface.dart';

void main(List<String> args) {
  PersonInterface person = Factory().createPerson()
    ..firstName = 'BatMan'
    ..lastName = 'wayne'
    ..emailAdress = 'bruce@batemail.com'
    ..phoneNumber = '1176893';

  TaskInterface task = Factory().createTask()..taskName = 'Task 1';

  task.performWork(4);
  task.performWork(1.5);
  task.completeTask();
}
