package com.aesc.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Users {
	private int userid;
	private String username;
	private String password;
	private int age;
	private String sex;
	private String telephone;
	private String departments;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	private String positions;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createtime;
//Session最后交互时间
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
  private Date lastAccess;
	private int status;
	
	
	public String getPositions() {
    return positions;
  }
  public void setPositions(String positions) {
    this.positions = positions;
  }
  public int getAge() {
    return age;
  }
  public void setAge(int age) {
    this.age = age;
  }
  public String getSex() {
    return sex;
  }
  public void setSex(String sex) {
    this.sex = sex;
  }
  public String getTelephone() {
    return telephone;
  }
  public void setTelephone(String telephone) {
    this.telephone = telephone;
  }
  public String getDepartments() {
    return departments;
  }
  public void setDepartments(String departments) {
    this.departments = departments;
  }
  public Date getBirthday() {
    return birthday;
  }
  public void setBirthday(Date birthday) {
    this.birthday = birthday;
  }
  public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
  public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
  public Date getLastAccess() {
    return lastAccess;
  }
  public void setLastAccess(Date lastAccess) {
    this.lastAccess = lastAccess;
  }
	
}
