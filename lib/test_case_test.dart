import 'package:xunit_example/result_listener.dart';
import 'package:xunit_example/test_result.dart';
import 'package:xunit_example/test_suite.dart';

import 'test_case.dart';
import 'was_run.dart';

class TestCaseTest extends TestCase {
  late WasRun test;
  late TestResult result;

  TestCaseTest(super.name);

  @override
  void setUp({Function? callback}) {
    result = TestResult();
  }

  void testTemplateMethod() {
    WasRun('testMethod').run(result);
    assert(test.log == 'setUp testMethod tearDown ');
  }

  void testResult() {
    WasRun('testMethod').run(result);
    assert(result.summary() == "1 run, 0 failed");
  }

  void testFailedResultFormatting() {
    result.testStarted();
    result.testFailed();
    assert(result.summary() == '1 run, 1 failed');
  }

  void testSuite() {
    TestSuite suite = TestSuite();
    suite.add(WasRun("testMethod"));
    suite.add(WasRun("testBrokenMethod"));
    suite.run(result);
    assert(result.summary() == "2 run, 1 failed");
  }

  void testNotification() {
    ResultListener listener = ResultListener();
    result.addListener(listener);
    WasRun("testMethod").run(result);
    assert(listener.count == 1);
  }
}
