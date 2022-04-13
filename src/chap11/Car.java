package chap11;

import java.util.List;

public class Car {
	private String model;
	private int price;
	private boolean avaliable;
	private List<String> owners;
	
public Car() {
		
	}
	
	public List<String> getOwners() {
		return owners;
	}

	public void setOwners(List<String> owners) {
		this.owners = owners;
	}

	public Car(String model , int price) {
		this.model = model;
		this.price = price;
	}
	
	public boolean isAvaliable() {
		return avaliable;
	}
	public void setAvaliable(boolean avaliable) {
		this.avaliable = avaliable;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
