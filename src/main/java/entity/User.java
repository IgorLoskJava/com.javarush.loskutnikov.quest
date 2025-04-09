package entity;

public class User {
    private static User instance;
    private String name;
    private int life;

    private User(String name, int life) {
        this.name = name;
        this.life = life;
    }

    private User() {
    }

    public static User getInstance() {
        if (instance == null) {
                instance = new User("User", 1);
        }
        return instance;
    }

    public String getName() {
        return name;
    }
    public int getLife() {
        return life;
    }

    public void setName(String name) {
        this.name = name;
    }
    public void setLife(int life) {
        this.life = life;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", life=" + life +
                '}';
    }
}
