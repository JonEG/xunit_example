import 'test_case.dart';
import 'was_run.dart';

class TestCaseTest extends TestCase {
  late WasRun test;

  TestCaseTest(super.name);

  void testTemplateMethod() {
    test = WasRun('testMethod');
    test.run();
    assert(test.log == 'setUp testMethod ');
  }
}
