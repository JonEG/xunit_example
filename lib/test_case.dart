import 'dart:mirrors';

abstract class TestCase {
  String name;

  TestCase(this.name);

  void run() {
    InstanceMirror instanceMirror = reflect(this);
    instanceMirror.invoke(Symbol(name), []);
  }
}
