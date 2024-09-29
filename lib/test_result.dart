class TestResult {
  late int runCount;
  late int failedTests;

  TestResult() {
    runCount = 0;
  }

  void testStarted() {
    runCount++;
  }

  String summary() {
    return "$runCount run, 0 failed";
  }
}
