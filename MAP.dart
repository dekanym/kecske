

void  main() {

  Map<String, List>  Weekmap = {
    "Monday": ["workday", "weekend", "holiday"],
    "Tuesday": ["public holiday", "bank holiday", "national holiday"],
    "Wednesday":["religious holiday", "federal holiday", "school holiday"] ,
    "Thursday":  [ "company holiday", "floating holiday", "seasonal holiday"],
    "Friday":["observed holiday", "half-day","fuck a femboy friday" ] ,
    "Saturday":[ "personal day", "sick day", "leave of absence"]  ,
    "Sunday":[ "vacation day", "remote workday","flexible day"] 
    };

    print(Weekmap.keys);
    for(String day in Weekmap.keys){
      print(day);
      print(day.length);
    }

    Weekmap["Wednesday"]=["workday", "remote workday", "national holiday"];
    Weekmap["Saturday"]=[];
    Weekmap.removeWhere((key, value) => value.isEmpty);
    print(Weekmap);
}