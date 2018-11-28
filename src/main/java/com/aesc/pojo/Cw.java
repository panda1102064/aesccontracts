package com.aesc.pojo;

import org.springframework.format.annotation.DateTimeFormat;

public class Cw {

	private int contract_id;
	private String contract_serial;
	private String merchant_name;
	private String address;
	private String area;
	private String carport_number;
	private String carport_serial;
	private String price;
	private String total;
	private String times;
	private String year_start;
	private String month_start;
	private String day_start;
	private String year_end;
	private String month_end;
	private String day_end;
	private String pay_one;
	private String pay_two;
	private String cash_deposit;
	private String rent_one;
	private String rent_two;
	private String rent_three;
	private String area_four;
	private String purpose;
	private String accessory;
	private String remark;
	private String first_agent;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String first_date;
	private String second_sign;
	private String second_agent;
	private String phone;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String second_date;
	private int status;
	private String username;
	
	
	public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  public int getContract_id() {
		return contract_id;
	}
	public void setContract_id(int contract_id) {
		this.contract_id = contract_id;
	}
	public String getContract_serial() {
		return contract_serial;
	}
	public void setContract_serial(String contract_serial) {
		this.contract_serial = contract_serial;
	}
	public String getMerchant_name() {
		return merchant_name;
	}
	public void setMerchant_name(String merchant_name) {
		this.merchant_name = merchant_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCarport_number() {
		return carport_number;
	}
	public void setCarport_number(String carport_number) {
		this.carport_number = carport_number;
	}
	public String getCarport_serial() {
		return carport_serial;
	}
	public void setCarport_serial(String carport_serial) {
		this.carport_serial = carport_serial;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public String getYear_start() {
		return year_start;
	}
	public void setYear_start(String year_start) {
		this.year_start = year_start;
	}
	public String getMonth_start() {
		return month_start;
	}
	public void setMonth_start(String month_start) {
		this.month_start = month_start;
	}
	public String getDay_start() {
		return day_start;
	}
	public void setDay_start(String day_start) {
		this.day_start = day_start;
	}
	public String getYear_end() {
		return year_end;
	}
	public void setYear_end(String year_end) {
		this.year_end = year_end;
	}
	public String getMonth_end() {
		return month_end;
	}
	public void setMonth_end(String month_end) {
		this.month_end = month_end;
	}
	public String getDay_end() {
		return day_end;
	}
	public void setDay_end(String day_end) {
		this.day_end = day_end;
	}
	public String getPay_one() {
		return pay_one;
	}
	public void setPay_one(String pay_one) {
		this.pay_one = pay_one;
	}
	public String getPay_two() {
		return pay_two;
	}
	public void setPay_two(String pay_two) {
		this.pay_two = pay_two;
	}
	public String getCash_deposit() {
		return cash_deposit;
	}
	public void setCash_deposit(String cash_deposit) {
		this.cash_deposit = cash_deposit;
	}
	public String getRent_one() {
		return rent_one;
	}
	public void setRent_one(String rent_one) {
		this.rent_one = rent_one;
	}
	public String getRent_two() {
		return rent_two;
	}
	public void setRent_two(String rent_two) {
		this.rent_two = rent_two;
	}
	public String getRent_three() {
		return rent_three;
	}
	public void setRent_three(String rent_three) {
		this.rent_three = rent_three;
	}
	public String getArea_four() {
		return area_four;
	}
	public void setArea_four(String area_four) {
		this.area_four = area_four;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getAccessory() {
		return accessory;
	}
	public void setAccessory(String accessory) {
		this.accessory = accessory;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getFirst_agent() {
		return first_agent;
	}
	public void setFirst_agent(String first_agent) {
		this.first_agent = first_agent;
	}
	public String getFirst_date() {
		return first_date;
	}
	public void setFirst_date(String first_date) {
		this.first_date = first_date;
	}
	public String getSecond_sign() {
		return second_sign;
	}
	public void setSecond_sign(String second_sign) {
		this.second_sign = second_sign;
	}
	public String getSecond_agent() {
		return second_agent;
	}
	public void setSecond_agent(String second_agent) {
		this.second_agent = second_agent;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSecond_date() {
		return second_date;
	}
	public void setSecond_date(String second_date) {
		this.second_date = second_date;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
