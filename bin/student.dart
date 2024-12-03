class Student {
  //variables (atrbuute)
  int? numberInteger;
  double? doublenumber;
  String? sstring;
  bool? boolean;
  var val;

  //constructor
  Student(
      {required this.numberInteger,
      this.doublenumber,
      this.sstring,
      this.boolean = false,
      this.val});

//first method
  void printmethod() {
    print(
        "integer number : $numberInteger  double number: $doublenumber  stirng is : $sstring boolean is : $boolean  var is : $val ");
  }

  // second method
  num sum({num? x, num? y}) {
    return x! + y!;
  }
}//end of class
