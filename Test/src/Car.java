
public class Car {

	int gas = 60;
	int nenpi = 10;

	public void drive(int gas){
		this.gas -= gas;
		System.out.println(gas*this.nenpi+"km走りました");
	}

	public void putGas(int gas){
		this.gas += gas;
		System.out.println("ガソリンを"+this.nenpi+"リットル補給しました");
	}

	public void checkGas(){
		System.out.println("ガソリンは残り"+this.gas +"リットルです");
	}
}
