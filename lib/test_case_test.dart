import 'test_case.dart';
import 'was_run.dart';

class TestCaseTest extends TestCase {
  TestCaseTest(super.name);

  void testRunning() {
    WasRun test = WasRun("testMethod");
    assert(!test.wasRun);
    test.run();
    assert(test.wasRun);
  }
}
