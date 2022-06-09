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
  group("getClasses", (){
    test("Obtained Wrong Class List", (){
      switch(type){
        case ClassType.da:
          expect(const Class().getClasses(),classesDA);
          break;
        case ClassType.ltw:
          expect(const Class().getClasses(),classesLTW);
          break;
        case ClassType.esof:
          expect(const Class().getClasses(),classesES);
          break;
        case ClassType.lcom:
          expect(const Class().getClasses(),classesLCOM);
          break;
        case ClassType.so:
          expect(const Class().getClasses(),classesSO);
          break;
      }
    });
  });
}