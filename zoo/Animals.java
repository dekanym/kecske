package zoo;

public abstract class Animals {
    String name;
    int age;
    boolean gender;
    //true = male, false = female
    
    public String getName() {
        return this.name;
    }
    

    abstract String breed();
    
    abstract void sound();

    abstract boolean islandanimal();
}