package com.bambii.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Sleep {

	@Id
	@GeneratedValue
	private Integer sId;
	private String sleepStart;
	private String sleepEnd;
	private String sleepDate;
	
	public Sleep() {
		super();
	}

	public Sleep(Integer sId, String sleepStart, String sleepEnd, String sleepDate) {
		super();
		this.sId = sId;
		this.sleepStart = sleepStart;
		this.sleepEnd = sleepEnd;
		this.sleepDate = sleepDate;
	}

	public Integer getsId() {
		return sId;
	}

	public void setsId(Integer sId) {
		this.sId = sId;
	}

	public String getSleepStart() {
		return sleepStart;
	}

	public void setSleepStart(String sleepStart) {
		this.sleepStart = sleepStart;
	}

	public String getSleepEnd() {
		return sleepEnd;
	}

	public void setSleepEnd(String sleepEnd) {
		this.sleepEnd = sleepEnd;
	}

	public String getSleepDate() {
		return sleepDate;
	}

	public void setSleepDate(String sleepDate) {
		this.sleepDate = sleepDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((sId == null) ? 0 : sId.hashCode());
		result = prime * result + ((sleepDate == null) ? 0 : sleepDate.hashCode());
		result = prime * result + ((sleepEnd == null) ? 0 : sleepEnd.hashCode());
		result = prime * result + ((sleepStart == null) ? 0 : sleepStart.hashCode());
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
		Sleep other = (Sleep) obj;
		if (sId == null) {
			if (other.sId != null)
				return false;
		} else if (!sId.equals(other.sId))
			return false;
		if (sleepDate == null) {
			if (other.sleepDate != null)
				return false;
		} else if (!sleepDate.equals(other.sleepDate))
			return false;
		if (sleepEnd == null) {
			if (other.sleepEnd != null)
				return false;
		} else if (!sleepEnd.equals(other.sleepEnd))
			return false;
		if (sleepStart == null) {
			if (other.sleepStart != null)
				return false;
		} else if (!sleepStart.equals(other.sleepStart))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Sleep [sId=" + sId + ", sleepStart=" + sleepStart + ", sleepEnd=" + sleepEnd + ", sleepDate="
				+ sleepDate + "]";
	}

}
	
