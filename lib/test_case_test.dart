import 'package:xunit_example/test_result.dart';

import 'test_case.dart';
import 'was_run.dart';

class TestCaseTest extends TestCase {
  late WasRun test;

  TestCaseTest(super.name);

  void testTemplateMethod() {
    test = WasRun('testMethod');
    test.run();
    assert(test.log == 'setUp testMethod tearDown ');
  }

  void testResult() {
    test = WasRun('testMethod');
    TestResult result = test.run();
    assert(result.summary() == "1 run, 0 failed");
  }

  void testBrokenMethod() {
    test = WasRun('testMethod');
    TestResult result = test.run();
    assert(result.summary() == "1 run, 1 failed");
  }
}
