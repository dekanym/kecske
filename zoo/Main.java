package zoo;

public class Main {
        public static void main(String[] args) {
            Bird golya = new Bird("Golya", 2, false, "Parrot");
    
            golya.setSound("Squawk");
    
            golya.setislandanimal(true);


            System.out.println( golya.name);
            System.out.println(golya.age);
            System.out.println((golya.gender ? "Male" : "Female"));
            System.out.println(golya.breed());
            golya.sound();
            System.out.println(golya.islandanimal());


            Reptile turtle = new Reptile("Turtle", 100, true, "Turtle");
    
            turtle.setSound("*moans sound*");

            System.out.println( turtle.name);
            System.out.println(turtle.age);
            System.out.println((turtle.gender ? "Male" : "Female"));
            System.out.println(turtle.breed());
            turtle.sound();



            Mammauuuu Márkó = new Mammauuuu("Márkó", 20, true, "Mammal");

            Márkó.setSound("nagyon epik harci hangok rááááááá");

            System.out.println( Márkó.name);
            System.out.println(Márkó.age);
            System.out.println((Márkó.gender ? "Male" : "Female"));
            System.out.println(Márkó.breed());
            Márkó.sound();
            System.out.println(Márkó.islandanimal());
    }
}
