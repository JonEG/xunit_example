import 'package:xunit_example/test_case.dart';
import 'package:xunit_example/test_result.dart';

class TestSuite {
  List<TestCase> tests = [];
  void add(TestCase test) {
    tests.add(test);
  }

  void run(TestResult result) {
    for (TestCase test in tests) {
      test.run(result);
    }
  }
}
