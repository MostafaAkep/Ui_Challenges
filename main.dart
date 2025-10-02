// // global variable = i can call it in any place of file apps.dart
// void main() {
//   // data types \ variable \ assignment operator \ value \ var = can be any data type \ const=final can`t be reassigned
//   int myAge = 20;
//   String myName = "mostafa";
//   double myGba = 4.2;
//   bool dadaIsMan = true;
//   print(myGba);
//   print(dadaIsMan);
//   var myTall = 170;
//   const y = 10;
//   final a = 100;
//   // declaration \ initialization \ reassign
//   int x;
//   x = 14;
//   x = 20;
//   print(x);
//   print("my name is  $myName & my age is $myAge");
//   print("the result is ${myTall + y}");
//   // operators...== equal question  \  && and  \  || or  \  != not equal  \  ! not (if it false it become true)
//   //  % modules operator باقي القسمه
//   if (x % 2 == 0) {
//     print("even number");
//   } else {
//     print("odd number");
//   }
//   // كومنت فاضي افرق بيه فوق عن تحت
//   if (a < y && y > 5) {
//     print(x - y);
//   } else if (a == x || a != y) {
//     print(a / x);
//   } else {
//     print(x + y);
//   }
//   // i = i +1  =  i++
//   // if i<10 it print then add 1 then he see if i<10 it print
//   for (int i = 1; i <= 3; i++) {
//     print("ALAHLY");
//   }
//   for (int e = 1; e <= 7; e++) {
//     if (e < 4) {
//       print("smaller than 4 : $e");
//     } else if (e < 6) {
//       print("smaller than 6 : $e");
//     } else {
//       print("stop : $e");
//     }
//   }
//   int i = 0;
//   while (i < 5) {
//     print("okay : $i");
//     i++;
//   }
//   i = 0;
//   do {
//     print("do do do");
//     i++;
//   } while (i > 7);
//   // method or function
//   // we must create it out of the main and call it into any function
//   // arguments ()
//   addTwoNumbers(5, 5, 5);
//   addTwoNumbers(4, 2);
//   int result = add(5, 5);
//   print(result);
//   // break go out loop... continue  get in next iteration
//   for (int o = 0; o <= 3; o++) {
//     // if (o == 2) {
//     //   break;
//     // }
//     if (o == 3) {
//       continue;
//     }
//     print("for good $o");
//   }
//   // dynamic like var but it work on runtime
//   try {
//     dynamic p = true;
//     print(p++);
//   } on NoSuchMethodError {
//     print("NoSuchMethodError");
//   } on OutOfMemoryError {
//     print("OutOfMemoryError");
//   } catch (e) {
//     print("error: $e");
//   } finally {
//     print("mostafa");
//   }
//   var my_name = "dada";
//   switch (my_name) {
//     case "ahmed":
//       print("my name is ahmed");
//       break;
//     case "omar":
//     case "g":
//       print("my name is omar");
//       break;
//     default:
//       print("dada");
//   }
//   // array..list..data structure
//   // in dart we can add any data type in the List together
//   var myFriends = ["srdo", "som3a", "hona", 22, 44.5, true];
//   myFriends[1] = "waheed";
//   // if i do that i can not add new value or change old one... var myFriends = const ["srdo", "som3a", "hona"];
//   print(myFriends);
//   print(myFriends[2]);
//   myFriends.add("khaled");
//   myFriends.add(14);
//   print(myFriends);
//   // i can make a list that continue only one data type
//   List<String> myTeams = ["Alahly", "mancity", "Argentine"];
//   //same as ...var myTeams = <String> ["Alahly", "mancity", "Argentine"];
//   print(myTeams);
//   /*list..map..set => types of data structure
//     it doesn't repeat items and its not ordered
//     sit<dynamic> accept all data types*/
//   var Set = {1, 2, 3, 4, 5};
//   print(Set);
//   // map  => key,value
//   // map<int,int>   map<dynamic,int>   map<string,int>   map<int,string>   اي حاجه
//   var Map = {2: "mostafa", 1: "mahmoud", 7: "Akep"};
//   print(Map[2]);
//   // where function is very important topic for flutter
//   var a1 = [1, 2.5, 3.2, 4, 5, 6];
//   print(a1);
//   var b1 = a1.where((element) => element < 4);
//   print(b1);
// }

// // parameters () at least two of them...optional parameter.must be at the end...named parameter
// void addTwoNumbers(int firstNumber, int secondNumber, [int thirdNumber = 2]) {
//   print(firstNumber + secondNumber + thirdNumber);
// }

// int add(int x, int y) {
//   // local variable
//   int x = 10;
//   return x + y;
//   // OOP
//   // in dart we do not have access modifier >>> public/ private/protected
//   //if we want to make a private variable we put (_) before it
//   //in dart we call interface >>>implicit interface as its in the same class
//   // if we say extends we consider it a class
//   // if we say implements we consider it a implicit interface
//   /*polymorphism use case is with abstract class as we can not instantiate object from it so we make another class
//   that extends from it and use it as a type*/
//   // null safety ? after data type or use ! after the value
//   //required with the optional parameter if it bass any thing other than var
// }

void main() {
  int number = 4;
  double result = number % 2;
  if (result == 0) {
    print('even');
  } else {
    print('odd');
  }
}
