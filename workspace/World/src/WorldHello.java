import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * 
 */

/**
 * @author internousdev
 *
 */
public class WorldHello {
	public static void main(String[]args)throws IOException{
	
	/**
	 * @param args
	 */
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("入力してください");
		String t= br.readLine();
		System.out.println(t+"が入力されました");

}}