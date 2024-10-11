import 'package:xunit_example/result_listener.dart';

class TestResult {
  late int runCount;
  late int errorCount;
  late ResultListener listener;

  TestResult() {
    runCount = 0;
    errorCount = 0;
    listener = ResultListener();
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

  void addListener(ResultListener listener) {
    this.listener = listener;
  }
}
