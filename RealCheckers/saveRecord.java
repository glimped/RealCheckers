import java.io.*;
import java.util.*;
public class saveRecord{
static List<playerRecord>  playerArray = new ArrayList<playerRecord>();
  
  public static void nativeWrite(playerRecord newPlayer, OutputStream outputStream) {
    try {
      final ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
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
      System.out.println("Read success!");
    } catch (IOException | ClassNotFoundException e) {
      e.printStackTrace();
    }
    return playerArray;
  }
  
}
