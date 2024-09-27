import 'test_case.dart';

class WasRun extends TestCase {
  late bool wasRun;
  late bool wasSetUp;

  WasRun(super.name) {
    wasSetUp = false;
  }

  bool testMethod() {
    wasRun = true;
    return wasRun;
  }

  void setUp() {
    wasRun = false;
    wasSetUp = true;
  }
}
