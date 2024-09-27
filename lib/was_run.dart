import 'test_case.dart';

class WasRun extends TestCase {
  late String log;

  WasRun(super.name) {}

  void setUp() {
    log = "setUp ";
  }

  void testMethod() {
    log += "testMethod ";
  }

  void tearDown() {
    log += "tearDown ";
  }
}
