import 'package:hello_world/class_list.dart';
import 'package:hello_world/class.dart';
import 'package:hello_world/globals.dart';
import 'package:test/test.dart';

void main(){
  group("getSubjectName", (){
    test("Obtained Wrong Subject Name", (){
      switch(type){
        case ClassType.da:
          expect(const Class().getSubjectName(),"DA");
          break;
        case ClassType.ltw:
          expect(const Class().getSubjectName(),"LTW");
          break;
        case ClassType.esof:
          expect(const Class().getSubjectName(),"ESof");
          break;
        case ClassType.lcom:
          expect(const Class().getSubjectName(),"LCom");
          break;
        case ClassType.so:
          expect(const Class().getSubjectName(),"SO");
          break;
      }
      });
  });
}