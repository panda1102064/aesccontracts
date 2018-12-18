package com.aesc.pojo;

import org.springframework.format.annotation.DateTimeFormat;

public class Xescscdxtcw {

	private int contract_id;
	private String contract_serial;
	private String merchant_name;
	private String offer;
	private String purpose;
	private String plate;
	private String year_start;
	private String month_start;
	private String day_start;
	private String year_end;
	private String month_end;
	private String day_end;
	private String service_charge;
	private String total;
	private String numeral_sed;
	private String year_rd;
	private String month_rd;
	private String day_rd;
	private String cash_deposit;
	private String numeral_four;
	private String payment_way;
	private String payment_time;
	private String rent;
	private String remark;
	private String first_agent;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String first_date;
	private String second_sign;
	private String second_agent;
	private String second_phone;
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


	public String getPlate() {
		return plate;
	}

	public void setPlate(String plate) {
		this.plate = plate;
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

	public String getOffer() {
    return offer;
  }
  public void setOffer(String offer) {
    this.offer = offer;
  }
  public String getPurpose() {
    return purpose;
  }
  public void setPurpose(String purpose) {
    this.purpose = purpose;
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

	public String getService_charge() {
		return service_charge;
	}

	public void setService_charge(String service_charge) {
		this.service_charge = service_charge;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getNumeral_sed() {
		return numeral_sed;
	}

	public void setNumeral_sed(String numeral_sed) {
		this.numeral_sed = numeral_sed;
	}

	public String getYear_rd() {
		return year_rd;
	}

	public void setYear_rd(String year_rd) {
		this.year_rd = year_rd;
	}

	public String getMonth_rd() {
		return month_rd;
	}

	public void setMonth_rd(String month_rd) {
		this.month_rd = month_rd;
	}

	public String getDay_rd() {
		return day_rd;
	}

	public void setDay_rd(String day_rd) {
		this.day_rd = day_rd;
	}

	public String getCash_deposit() {
		return cash_deposit;
	}

	public void setCash_deposit(String cash_deposit) {
		this.cash_deposit = cash_deposit;
	}

	public String getNumeral_four() {
		return numeral_four;
	}

	public void setNumeral_four(String numeral_four) {
		this.numeral_four = numeral_four;
	}

	public String getPayment_way() {
		return payment_way;
	}

	public void setPayment_way(String payment_way) {
		this.payment_way = payment_way;
	}

	public String getPayment_time() {
		return payment_time;
	}

	public void setPayment_time(String payment_time) {
		this.payment_time = payment_time;
	}

	public String getRent() {
		return rent;
	}

	public void setRent(String rent) {
		this.rent = rent;
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

	public String getSecond_phone() {
		return second_phone;
	}

	public void setSecond_phone(String second_phone) {
		this.second_phone = second_phone;
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