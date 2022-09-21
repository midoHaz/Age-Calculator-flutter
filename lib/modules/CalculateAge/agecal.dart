class AgeCalculator{
  static var age;
  AgeCalculator(int num){
    int birthyear=num;
    age=DateTime.now().year-birthyear;
  }
}