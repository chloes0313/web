package com.chloes.vo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Board implements Serializable{
	private String title;
	private String content;
	private List<MultipartFile> upImage;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<MultipartFile> getUpImage() {
		return upImage;
	}
	public void setUpImage(List<MultipartFile> upImage) {
		this.upImage = upImage;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((upImage == null) ? 0 : upImage.hashCode());
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
		Board other = (Board) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (upImage == null) {
			if (other.upImage != null)
				return false;
		} else if (!upImage.equals(other.upImage))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Board [title=" + title + ", content=" + content + ", upImage=" + upImage + "]";
	}

	
}
