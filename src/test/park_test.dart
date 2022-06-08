import 'package:hello_world/park.dart';
import 'package:hello_world/park_list.dart';
import 'package:test/test.dart';

void main(){
  group('getKey',() {
    test('Wrong key obtained.', (){
     switch(type){
       case (ParkType.student):
         expect(const Park().getKey(), "p3livres");
         break;
       case (ParkType.teacher):
         expect(const Park().getKey(), "p1livres");
     }
    });
  });
}

