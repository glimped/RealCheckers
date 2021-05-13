import java.io.*;
import java.util.*;
public class saveRecord{
static List<playerRecord>  playerArray = new ArrayList<playerRecord>();
  
  public static void nativeWrite(playerRecord newPlayer) {
    try {
      File tempFile = new File("playerData.ser");
      if (tempFile.exists()){
        playerArray = nativeRead();
      } 
      final FileOutputStream fileOutputStream = new FileOutputStream(new File("playerData.ser"));
      final ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
      playerArray.add(newPlayer);
      objectOutputStream.writeObject(playerArray);
      System.out.println("playerData.ser" + " Write success!");
      fileOutputStream.close();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
  
  public static List<playerRecord> nativeRead() {
    try {
      final FileInputStream fileInputStream= new FileInputStream(new File("playerData.ser"));
      final ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
      playerArray = (List<playerRecord>) objectInputStream.readObject();
      System.out.println("Read success!");
      fileInputStream.close();
    } catch (IOException | ClassNotFoundException e) {
      e.printStackTrace();
    }
    return playerArray;
  }
  
}
