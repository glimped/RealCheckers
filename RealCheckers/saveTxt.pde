//import java.io.BufferedReader;
//import java.io.BufferedWriter;
//import java.io.FileReader;
//import java.io.FileWriter;
//import java.io.IOException;

//public static class saveTxt {
//    public saveTxt() {
//    }

//    public static String readFile(String filename) {
//        String line = "";

//        try {
//            BufferedReader wordFile = new BufferedReader(new FileReader(filename));
//            line = wordFile.readLine();
//            return line;
//        } catch (IOException e) {
//            e.printStackTrace();
//            return line;
//        }
//    }

//    public static void writeToFile(String contents) {
//        try {
//            System.out.println(contents);
//            FileWriter file = new FileWriter("data.txt");
//            BufferedWriter bw = new BufferedWriter(file);
//            bw.write(contents);
//            bw.close();
//            System.out.println("File Saved!");
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

//    }
//}
