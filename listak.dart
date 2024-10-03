
void main(){
  print("1.feladat \n\n");
  var list = List<int>.filled(10, 0);
  print(list);
 for(int i = 1; i < list.length; i+=2){
    list[i]=1;
 }
 print(list);
print("\n\n2.feladat \n\n");
  var lista = List<int>.filled(10, 0);
  print(lista);
  for(int i = 0; i < lista.length; i+=2){
    lista[i]=1;
  }
  print(lista);
  print("\n\n3.feladat \n\n");
  List<int> fiboList = [];

  int a = 0, b = 1;

  fiboList.add(a);
  fiboList.add(b);

  while (true) {
    int next = a + b;
    if (next >= 30) break; 
    fiboList.add(next);
    a = b;  
    b = next;
  }
  print(fiboList);
    //A fibonaci kódot chatgpt csinálta mert most listára szeretnék fokuszálni

  print("\n\n4.feladat \n\n");
  print(fiboList.length);
  print(fiboList.first);
  print(fiboList.last);
  print(fiboList[3]);
  print(fiboList[5]);
  print(fiboList.reversed);
  fiboList.clear();
  if(fiboList.isEmpty){
    print("A lista ures");
  }else{
    print("A lista nem ures");
  }

  List<int> cica=[1,2,3,5,7];
  fiboList.addAll(cica);
  print(fiboList);
  List<int> nagymacska=[8,13,21];
  fiboList.removeLast();
  fiboList.addAll(nagymacska);
  print(fiboList);
  fiboList.removeAt(0);
  print(fiboList);
  print("\n\n5.feladat \n\n");
  List<int> gaysex=[];
  for(int i = 0; i < fiboList.length; i++){
    gaysex.add(fiboList[i]*fiboList[i]);
  }
  print(gaysex);

  List<int> pornhub=[];
  for(int i = 0; i < fiboList.length; i++){
    if(fiboList[i]%2==1){
      pornhub.add(fiboList[i]);
    }
  }

  for(int i = 0; i < gaysex.length; i++){
    if(gaysex[i]%2==1){
      pornhub.add(gaysex[i]);
    }
  }
  print(pornhub);
  pornhub.sort((a,b)=>b.compareTo(a));
  print(pornhub);


    }
