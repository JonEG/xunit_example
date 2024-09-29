class TestResult {
  late int runCount;
  late int errorCount;

  TestResult() {
    runCount = 0;
    errorCount = 0;
  }

  void testStarted() {
    runCount++;
  }

  void testFailed() {
    errorCount++;
  }

  String summary() {
    return "$runCount run, $errorCount failed";
  }
}
