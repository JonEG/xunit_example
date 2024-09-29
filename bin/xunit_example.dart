import 'package:xunit_example/test_case_test.dart';

void main(List<String> arguments) {
  TestCaseTest("testTemplateMethod").run();
  TestCaseTest("testResult").run();
  TestCaseTest("testFailedResultFormatting").run();
  TestCaseTest("testBrokenMethod").run();
  TestCaseTest("testBrokenSetUp").run();
}
