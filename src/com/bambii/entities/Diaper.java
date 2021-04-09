package com.bambii.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Diaper {

	@Id
	@GeneratedValue
	private Integer dId;
	private String diaperType;
	private String diaperTime;
	private String diaperDate;
	private String diaperNotes;

	public Diaper() {
		super();
	}

	public Diaper(Integer dId, String diaperType, String diaperTime, String diaperDate, String diaperNotes) {
		super();
		this.dId = dId;
		this.diaperType = diaperType;
		this.diaperTime = diaperTime;
		this.diaperDate = diaperDate;
		this.diaperNotes = diaperNotes;
	}

	public Integer getdId() {
		return dId;
	}

	public void setdId(Integer dId) {
		this.dId = dId;
	}

	public String getDiaperType() {
		return diaperType;
	}

	public void setDiaperType(String diaperType) {
		this.diaperType = diaperType;
	}

	public String getDiaperTime() {
		return diaperTime;
	}

	public void setDiaperTime(String diaperTime) {
		this.diaperTime = diaperTime;
	}

	public String getDiaperDate() {
		return diaperDate;
	}

	public void setDiaperDate(String diaperDate) {
		this.diaperDate = diaperDate;
	}

	public String getDiaperNotes() {
		return diaperNotes;
	}

	public void setDiaperNotes(String diaperNotes) {
		this.diaperNotes = diaperNotes;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dId == null) ? 0 : dId.hashCode());
		result = prime * result + ((diaperDate == null) ? 0 : diaperDate.hashCode());
		result = prime * result + ((diaperNotes == null) ? 0 : diaperNotes.hashCode());
		result = prime * result + ((diaperTime == null) ? 0 : diaperTime.hashCode());
		result = prime * result + ((diaperType == null) ? 0 : diaperType.hashCode());
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
		Diaper other = (Diaper) obj;
		if (dId == null) {
			if (other.dId != null)
				return false;
		} else if (!dId.equals(other.dId))
			return false;
		if (diaperDate == null) {
			if (other.diaperDate != null)
				return false;
		} else if (!diaperDate.equals(other.diaperDate))
			return false;
		if (diaperNotes == null) {
			if (other.diaperNotes != null)
				return false;
		} else if (!diaperNotes.equals(other.diaperNotes))
			return false;
		if (diaperTime == null) {
			if (other.diaperTime != null)
				return false;
		} else if (!diaperTime.equals(other.diaperTime))
			return false;
		if (diaperType == null) {
			if (other.diaperType != null)
				return false;
		} else if (!diaperType.equals(other.diaperType))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Diaper [dId=" + dId + ", diaperType=" + diaperType + ", diaperTime=" + diaperTime + ", diaperDate="
				+ diaperDate + ", diaperNotes=" + diaperNotes + "]";
	}

}
