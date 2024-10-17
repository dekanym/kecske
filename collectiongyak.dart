import 'dart:developer';

void main(){
List<int> FizzBuzz =[];
for(int i = 0; i <100; i++){
    if(i %3==0 ||i%5==0){
      FizzBuzz.add(i);
    }
 }
print(FizzBuzz);
List<String> oddEven =[];

for(int i = 0;i <FizzBuzz.length;i++){
  if(FizzBuzz[i]%2 ==0){
    oddEven.add("even");
  }
  else{
    oddEven.add("odd");
  }
}
print(oddEven);

Set<int> oddSet={};

for(int i = 0;i <FizzBuzz.length;i++){
  if(FizzBuzz[i]%2 ==1){
   oddSet.add(FizzBuzz[i]);
  }
}
print(oddSet);




  Map<int, List<dynamic>> FizzBuzzMap = {};

  for (int i = 0; i < FizzBuzz.length; i++) {
    int number = FizzBuzz[i];
    List<dynamic> finaladat = [number]; 

    String parospar = (number % 2 == 0) ? 'even' : 'odd';

    if (number % 3 == 0 && number % 5 == 0) {
      finaladat.add('fizzbuzz'); 
    } else if (number % 3 == 0) {
      finaladat.add('fizz'); 
    } else if (number % 5 == 0) {
      finaladat.add('buzz');
    }

    finaladat.add(parospar); 
    FizzBuzzMap[number] = finaladat;
  }

  // Eredmény kiírása
  FizzBuzzMap.forEach((key, value) {
    print('$key  ${value.join()}');
  });
}