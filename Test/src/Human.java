
public class Human {
	private static int count_Human = 0;
	private String name;
	int birthday;
	int manpukudo;
	
	Human(String name,int birthday,int manpukudo){
		this.name=name;
		this.birthday=birthday;
		this.manpukudo=manpukudo;
		count_Human++;
	}
	
	Human(){
		this("不明",0,50);
	}
	
	
	public static int getCount_Human(){
		return count_Human;
	}
	
	public String getName(){
		return this.name;
	}
	
	
	void eat(){
		this.manpukudo += 60;
	}
	
}
