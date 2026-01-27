import java.io.*;
import java.util.*;
public class Problem1{
    public static void main(String[] args) throws IOException{
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the text: ");
        String text=sc.nextLine();
        try{
            //File creation
            File objfile = new File("FileHandling.txt");
            if(objfile.createNewFile()){
                System.out.println("File is Created"+" "+objfile.getName());
            }
            else{
                System.out.println("File already exists");
            }
            //Writing into the file
            
            // BufferedWriter bw=new BufferedWriter(new FileWriter("FileHandling.txt",true));
            // bw.write(text);
            // bw.newLine();
            // bw.close();
            // System.out.println("File Written successfully");


            // Reading From File

            // BufferedReader br=new BufferedReader(new FileReader("FileHandling.txt"));
            // String line;
            // while((line=br.readLine())!=null){
            //     System.out.println(line);
            // }

            // br.close();

            //Count total words,sentances and characters (excluding spaces)

            BufferedReader br=new BufferedReader(new FileReader("FileHandling.txt"));
            String line=br.readLine();
            int characters=0;
            int sent=0;
            int words=0;
            if(line!=null && !line.trim().isEmpty()){
                for(char c:line.toCharArray()){
                    if (c!=' '){
                        characters++;
                    }
                    if(c=='.' || c=='!' || c=='?'){
                        sent++;
                    }
                }
            }


        }
        catch(IOException e){
            System.out.println("A File error occured");
        }
        sc.close();
    }
}