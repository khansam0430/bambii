package com.bambii.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Pump {

	@Id
	@GeneratedValue
	private Integer pId;
	private String pumpType;
	private String pumpTime;
	private String pumpAmount;
	private String pumpDate;

	public Pump() {
		super();
	}

	public Pump(Integer pId, String pumpType, String pumpTime, String pumpAmount, String pumpDate) {
		super();
		this.pId = pId;
		this.pumpType = pumpType;
		this.pumpTime = pumpTime;
		this.pumpAmount = pumpAmount;
		this.pumpDate = pumpDate;
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public String getPumpType() {
		return pumpType;
	}

	public void setPumpType(String pumpType) {
		this.pumpType = pumpType;
	}

	public String getPumpTime() {
		return pumpTime;
	}

	public void setPumpTime(String pumpTime) {
		this.pumpTime = pumpTime;
	}

	public String getPumpAmount() {
		return pumpAmount;
	}

	public void setPumpAmount(String pumpAmount) {
		this.pumpAmount = pumpAmount;
	}

	public String getPumpDate() {
		return pumpDate;
	}

	public void setPumpDate(String pumpDate) {
		this.pumpDate = pumpDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((pId == null) ? 0 : pId.hashCode());
		result = prime * result + ((pumpAmount == null) ? 0 : pumpAmount.hashCode());
		result = prime * result + ((pumpDate == null) ? 0 : pumpDate.hashCode());
		result = prime * result + ((pumpTime == null) ? 0 : pumpTime.hashCode());
		result = prime * result + ((pumpType == null) ? 0 : pumpType.hashCode());
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
		Pump other = (Pump) obj;
		if (pId == null) {
			if (other.pId != null)
				return false;
		} else if (!pId.equals(other.pId))
			return false;
		if (pumpAmount == null) {
			if (other.pumpAmount != null)
				return false;
		} else if (!pumpAmount.equals(other.pumpAmount))
			return false;
		if (pumpDate == null) {
			if (other.pumpDate != null)
				return false;
		} else if (!pumpDate.equals(other.pumpDate))
			return false;
		if (pumpTime == null) {
			if (other.pumpTime != null)
				return false;
		} else if (!pumpTime.equals(other.pumpTime))
			return false;
		if (pumpType == null) {
			if (other.pumpType != null)
				return false;
		} else if (!pumpType.equals(other.pumpType))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Pump [pId=" + pId + ", pumpType=" + pumpType + ", pumpTime=" + pumpTime + ", pumpAmount=" + pumpAmount
				+ ", pumpDate=" + pumpDate + "]";
	}

}
