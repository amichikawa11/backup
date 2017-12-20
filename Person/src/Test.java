
public class Test {

	public static void main(String[] args) {

		//Personクラス

		Person taro = new Person();
		taro.name = "山田太郎";
		taro.age = 20;
		taro.phoneNumber="03-1234-5678";
		taro.address = "taro@gmail.com";

		Person akimi = new Person();
		akimi.name= "市川亜紀実";
		akimi.age =26;


		Person ziro = new Person();
		ziro.name= "木村次郎";
		ziro.age = 18;
		ziro.phoneNumber = "080-1111-1111";
		ziro.address ="ziro@yahoo.co.jp";

		Person hanako = new Person();
		hanako.name = "鈴木花子";
		hanako.age = 16;



		System.out.println(ziro.name);
		System.out.println(ziro.age);

		System.out.println(hanako.name);
		System.out.println(hanako.age);

		System.out.println("太郎の電話番号は"+taro.phoneNumber);
		System.out.println("次郎のメールアドレスは"+ziro.address);

		taro.talk();
		hanako.walk();
		ziro.run();

		System.out.println("");


		//Robotクラス

		Robot aibo = new Robot();

		aibo.name="アイボ";
		aibo.talk();

		Robot asimo = new Robot();
		asimo.name = "アシモ";

		asimo.work();

		Robot pepper = new Robot();
		pepper.name="ペッパー";

		Robot doraemon = new Robot();
		doraemon.name="ドラえもん";

	}

}
