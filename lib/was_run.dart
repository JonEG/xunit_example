import 'test_case.dart';

class WasRun extends TestCase {
  late bool wasRun;

  WasRun(super.name) {
    wasRun = false;
  }

  bool testMethod() {
    wasRun = true;
    return wasRun;
  }
}
