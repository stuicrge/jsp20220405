package chap08;
//property(속성) : productModel discountPrice
public class MyBean2 {
	private String model;
	private int price;
	
	public String getProductModel() {
		return model;
	}
	public int getDiscountPrice() {
		return price;
	}
	public boolean isHighPrice() {
		return price > 10000;
	}
}
