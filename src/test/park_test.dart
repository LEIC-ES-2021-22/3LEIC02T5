import 'package:hello_world/park.dart';
import 'package:hello_world/park_list.dart';
import 'package:test/test.dart';

void main(){
  group('getKey',() {
    test('Wrong key for Student Park Available Spots', (){
      type = ParkType.student;
      expect(const Park().getKey(), "p3livres");
    });
    test('Wrong key for Teacher Park Available Spots', (){
      type = ParkType.teacher;
      expect(const Park().getKey(), "p1livres");
    });
    });
  }

