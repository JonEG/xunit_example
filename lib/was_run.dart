import 'test_case.dart';

class WasRun extends TestCase {
  late String log;

  WasRun(super.name);

  void setUp({Function? callback}) {
    callback != null && callback();
    log = "setUp ";
  }

  void testMethod() {
    log += "testMethod ";
  }

  void tearDown() {
    log += "tearDown ";
  }
}
