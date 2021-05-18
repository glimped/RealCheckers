import java.io.*;
import java.util.*;
public class saveRecord{
static List<playerRecord>  playerArray = new ArrayList<playerRecord>();
  
  public static void nativeWrite(playerRecord newPlayer, OutputStream outputStream) {
    try {
      final ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
      //File tempFile = new File("playerData.ser");
      //if (tempFile.exists(sketchPath(""))){
      //  System.out.println(true);
      //  playerArray = saveRecord.nativeRead(is);
      //    for (playerRecord player: playerArray){
      //    if(player.player1.equals(newPlayer.player1) && player.player2.equals(newPlayer.player2)) {
      //      System.out.println(true);
      //      if (player.player1Score != newPlayer.player1Score || player.player2Score != newPlayer.player2Score){
      //        System.out.println(true);
      //      }
      //    }
      //  }
      //} else {
      //  playerArray.add(newPlayer);
      //} 
      playerArray.add(newPlayer);
      objectOutputStream.writeObject(playerArray);
      System.out.println("playerData.ser" + " Write success!");
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
  
  public static List<playerRecord> nativeRead(InputStream is) {
    try {
      final ObjectInputStream objectInputStream = new ObjectInputStream(is);
      playerArray = (List<playerRecord>) objectInputStream.readObject();
      for (playerRecord player: playerArray){
        System.out.println(player);
      }
      System.out.println("Read success!");
    } catch (IOException | ClassNotFoundException e) {
      e.printStackTrace();
    }
    return playerArray;
  }
  
}
