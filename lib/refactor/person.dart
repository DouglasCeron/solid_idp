import 'package:solid_idp/refactor/interfaces/person_interface.dart';

class Person implements PersonInterface {
  @override
  String? emailAdress;

  @override
  String? firstName;

  @override
  String? lastName;

  @override
  String? phoneNumber;
}
