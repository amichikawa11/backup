
public class Human {

	public static void main(String[] args) {
		HumanTest human = new HumanTest("ノブオ", 19910101,100);
		HumanTest human2 = new HumanTest("タカシ",19800302);
		HumanTest human3 = new HumanTest();

		
		System.out.println("名前"+ human.name);
		System.out.println("タカシの誕生日"+human2.birthday);
		System.out.println("アヤネの満腹度"+human3.manpukudo);
	}

}
