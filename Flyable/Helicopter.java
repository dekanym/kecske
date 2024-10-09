package Flyable;

public class Helicopter extends Vehicle implements Flyable {
    boolean isLand;

    public Helicopter(String type, boolean isTruck, int speed) {
        this.type = type;
        this.Speed = speed; 
        this.isTruck = isTruck;
        this.isLand = true; 
    }

    // Setter for isLand
    public void setLand(boolean land) {
        this.isLand = land;  
    }
    public boolean isLand() {
        return isLand;
    }

    @Override
    public boolean land() {
        return isLand();  
    }

    @Override
    public String fly() {
        if (isLand()) {  
            return "helicopter is out of use";
        } else {
            return "helicopter flies";
        }
    }

    @Override
    public void takeOff() {
       System.out.println("helicopter is taking off");
       this.isLand = false;
    }

    @Override
    public String toString() {
        return "Helicopter [Speed=" + Speed + ", isTruck=" + isTruck + ", isLand=" + isLand + ", type=" + type
                + ", isLand()=" + isLand() + ", land()=" + land() + ", fly()=" + fly() + "]";
    }

    
}
