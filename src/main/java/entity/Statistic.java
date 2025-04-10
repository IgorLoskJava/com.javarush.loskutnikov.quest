package entity;

public class Statistic {
    private static Statistic instance;
    private int gameCount;

    private Statistic() {
        gameCount = 0;
    }
    public static Statistic getInstance() {
        if (instance == null) {
            instance = new Statistic();

        }
        return instance;
    }
    public int getGameCount() {
        return gameCount;
    }
    public void setGameCount(int gameCount) {
        this.gameCount = gameCount;

    }

}
