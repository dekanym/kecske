package Flyable;

import zoo.Bird;

public class Main {
    public static void main(String[] args) {
        Helicopter cica = new Helicopter("apache gyorsi", true, 400);
        Helicopter macska = new Helicopter("apache nagyon fast", true, 500);
        System.out.println(cica);
        System.out.println(macska);

        Bird madar=new Bird("Kele", 1, true, "golya");
        System.out.println(madar);
    }
}
