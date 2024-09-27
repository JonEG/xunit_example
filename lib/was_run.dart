import 'test_case.dart';

class WasRun extends TestCase {
  late bool wasRun;
  late bool wasSetUp;
  late String log;

  WasRun(super.name) {
    wasSetUp = false;
  }

  void setUp() {
    wasRun = false;
    wasSetUp = true;
    log = "setUp ";
  }

  void testMethod() {
    wasRun = true;
    log += "testMethod ";
  }

  void tearDown() {
    log += "tearDown ";
  }
}
