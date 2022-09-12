import 'package:solid_idp/refactor/interfaces/message_sender.dart';
import 'package:solid_idp/refactor/interfaces/person_interface.dart';

class Mailer implements MessageSender {
  @override
  void sendMessage(PersonInterface owner, String msg) {
    print('sendiing email to ${owner.emailAdress} with message $msg');
  }
}
