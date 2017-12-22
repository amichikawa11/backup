
public class AutoCar extends Car{
	public void autoDrive(int gas){
		super.drive(gas);
		super.putGas(gas);
	}

}
