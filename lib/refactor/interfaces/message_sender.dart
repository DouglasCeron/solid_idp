import 'package:solid_idp/refactor/interfaces/person_interface.dart';

abstract class MessageSender {
  void sendMessage(PersonInterface owner, String msg);
}
