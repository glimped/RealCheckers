import java.io.Serializable;
//PlayerRecord
public class playerRecord implements Serializable {
    public String player1;
    public String player2;
    public int player1Score;
    public int player2Score;
    public static final long serialVersionUID = 6669;

    public playerRecord(
            String player1,
            String player2,
            int player1Score,
            int player2Score) {
        this.player1 = player1;
        this.player2 = player2;
        this.player1Score = player1Score;
        this.player2Score = player2Score;
    }

    @Override
    public String toString() {
        return "player1: " + player1 + ", with score: " + player1Score +
                ", player2: " + player2 + ", with score: " + player2Score;
    }
}
