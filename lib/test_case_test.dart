import 'test_case.dart';
import 'was_run.dart';

class TestCaseTest extends TestCase {
  late WasRun test;

  TestCaseTest(super.name);

  void setUp() {
    test = WasRun('testMethod');
  }

  void testRunning() {
    test.run();
    assert(test.wasRun);
  }

  void testSetUp() {
    test.run();
    assert(test.wasSetUp);
  }
}
