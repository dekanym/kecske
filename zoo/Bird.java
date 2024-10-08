package zoo;

public class Bird extends Animals {
    String breed;
    String Sound;
    boolean islandanimal = false;

    public Bird(String name, int age, boolean gender, String breed) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.breed = breed;
    }

    @Override
    String breed() {
        return this.breed;
    }

    @Override
    public void sound() {
        System.out.println( this.Sound + " " + this.Sound); 
    }

    @Override
    boolean islandanimal() {
        return this.islandanimal;
    }

    public void setSound(String sound) {
        this.Sound = sound;
    }

    public void setislandanimal(boolean islandanimal) {
        this.islandanimal = islandanimal;
    }
}
