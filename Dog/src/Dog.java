class Dog{
	private String name;
	private int age;



	public Dog(String name,int age){
		this.name=name;
		this.age=age;
	}

	public Dog(String name){
		this(name,0);
	}

	public Dog(int age){
		this("不明",age);
	}

	public Dog(){
		this("不明",0);
	}

	public void ShowProfile(){
		System.out.println("この子の名前は"+name+"です");
		System.out.println("この子の年齢は"+age+"歳です");;
	}
}