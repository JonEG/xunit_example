import 'dart:mirrors';

import 'was_run.dart';

abstract class TestCase {
  String name;

  TestCase(this.name);

  void run() {
    this.setUp();

    InstanceMirror instanceMirror = reflect(this);
    instanceMirror.invoke(Symbol(name), []);
  }

  void setUp();
}
