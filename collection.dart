void main(){

  Set<String> Week ={"hétfő", "kedd","szerda","csút","péntek","szombat","vasarnap"};

  for(String day in Week){
    print(day);
  }
  print(Week.last);
  print(Week.first);
  print(Week.isEmpty);
  print(Week.isNotEmpty);
  print(Week.contains("szerda"));
  print(Week.contains("wednesday"));
  print("\n");

  List<String> randomstuff = ["workday", "weekend", "holiday", "public holiday", "bank holiday", "national holiday", "religious holiday", "federal holiday", "school holiday", "company holiday", "floating holiday", "seasonal holiday", "observed holiday", "half-day", "flexible day", "personal day", "sick day", "leave of absence", "vacation day", "remote workday"];  

  for(String day in randomstuff){
    Week.add(day);
  }
  for(String day in Week){
    print(day);
  }

  Set <String> schoolholiday={};
  for(String day in Week){
    if(day.contains("school")){
      schoolholiday.add(day);
    }
    }
  print("\n");

  for(String day in schoolholiday){
    print(day);
  }
  
  print(schoolholiday.length);
  print("\n");  
  Set<String> schooldaydifferent =Week.difference(schoolholiday);
  print(schooldaydifferent);

  List<String> allDays = Week.toList(); 
  List<int> indices = [2, 3, 7, 11, 13]; 

  for (int index in indices) {
    if (index < allDays.length) {
      print( "$index ${allDays[index]}");
    } else {
      print("Error");
    }
  }
}
