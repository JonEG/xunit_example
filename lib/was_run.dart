import 'test_case.dart';

class WasRun extends TestCase {
  late bool wasRun;
  late bool wasSetUp;
  late String log;

  WasRun(super.name) {
    wasSetUp = false;
  }

  void testMethod() {
    wasRun = true;
    log += "testMethod ";
  }

  void setUp() {
    wasRun = false;
    wasSetUp = true;
    log = "setUp ";
  }
}
