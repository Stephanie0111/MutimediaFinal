package domain;

public class mem_order {
	int count;
	int price;
	String pic;
	String name;
	String id;
	String buy_acc;
	
	public String getBuy_acc() {
		return buy_acc;
	}
	public void setBuy_acc(String buy_acc) {
		this.buy_acc = buy_acc;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
