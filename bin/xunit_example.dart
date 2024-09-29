import 'package:xunit_example/test_case_test.dart';
import 'package:xunit_example/test_result.dart';
import 'package:xunit_example/test_suite.dart';

void main(List<String> arguments) {
  TestSuite suite = TestSuite();
  suite.add(TestCaseTest("testTemplateMethod"));
  suite.add(TestCaseTest("testResult"));
  suite.add(TestCaseTest("testFailedResultFormatting"));
  suite.add(TestCaseTest("testSuite"));
  TestResult result = TestResult();
  suite.run(result);
  print(result.summary());
}
