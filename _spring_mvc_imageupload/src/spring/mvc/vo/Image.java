package spring.mvc.vo;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Image implements Serializable{
	private int no;
	private String originalName; //원래이름
	private String saveName; //UUID로 생성한 이름 - 파일명 중복을 피하기 위해
	private String description;
	private MultipartFile upImage;
	
	public Image(int no, String originalName, String saveName, String description) {
		this.no = no;
		this.originalName = originalName;
		this.saveName = saveName;
		this.description = description;
	}
	public Image(){}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getSaveName() {
		return saveName;
	}
	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public MultipartFile getUpImage() {
		return upImage;
	}
	public void setUpImage(MultipartFile upImage) {
		this.upImage = upImage;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + no;
		result = prime * result + ((originalName == null) ? 0 : originalName.hashCode());
		result = prime * result + ((saveName == null) ? 0 : saveName.hashCode());
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
		Image other = (Image) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (no != other.no)
			return false;
		if (originalName == null) {
			if (other.originalName != null)
				return false;
		} else if (!originalName.equals(other.originalName))
			return false;
		if (saveName == null) {
			if (other.saveName != null)
				return false;
		} else if (!saveName.equals(other.saveName))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Images [no=" + no + ", originalName=" + originalName + ", saveName=" + saveName + ", description="
				+ description + "]";
	}
	
	
}
