package com.bambii.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Feeding {

	@Id
	@GeneratedValue
	private Integer id;
	private String feedType;
	private String feedTime;
	private String feedAmount;
	private String feedDate;
	
	public Feeding() {
		super();
	}

	public Feeding(Integer id, String feedType, String feedTime, String feedAmount, String feedDate) {
		super();
		this.id = id;
		this.feedType = feedType;
		this.feedTime = feedTime;
		this.feedAmount = feedAmount;
		this.feedDate = feedDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFeedType() {
		return feedType;
	}

	public void setFeedType(String feedType) {
		this.feedType = feedType;
	}

	public String getFeedTime() {
		return feedTime;
	}

	public void setFeedTime(String feedTime) {
		this.feedTime = feedTime;
	}

	public String getFeedAmount() {
		return feedAmount;
	}

	public void setFeedAmount(String feedAmount) {
		this.feedAmount = feedAmount;
	}

	public String getFeedDate() {
		return feedDate;
	}

	public void setFeedDate(String feedDate) {
		this.feedDate = feedDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((feedAmount == null) ? 0 : feedAmount.hashCode());
		result = prime * result + ((feedDate == null) ? 0 : feedDate.hashCode());
		result = prime * result + ((feedTime == null) ? 0 : feedTime.hashCode());
		result = prime * result + ((feedType == null) ? 0 : feedType.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Feeding other = (Feeding) obj;
		if (feedAmount == null) {
			if (other.feedAmount != null)
				return false;
		} else if (!feedAmount.equals(other.feedAmount))
			return false;
		if (feedDate == null) {
			if (other.feedDate != null)
				return false;
		} else if (!feedDate.equals(other.feedDate))
			return false;
		if (feedTime == null) {
			if (other.feedTime != null)
				return false;
		} else if (!feedTime.equals(other.feedTime))
			return false;
		if (feedType == null) {
			if (other.feedType != null)
				return false;
		} else if (!feedType.equals(other.feedType))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Feeding [id=" + id + ", feedType=" + feedType + ", feedTime=" + feedTime + ", feedAmount=" + feedAmount
				+ ", feedDate=" + feedDate + "]";
	}

}