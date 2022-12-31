package com.coosi29.flatshop.model;
import java.util.List;

public class ProductColorDTO {
private int ColorId;
private String Color;
public ProductColorDTO(int colorId, String color) {
	super();
	ColorId = colorId;
	Color = color;
}
public ProductColorDTO() {
	// TODO Auto-generated constructor stub
}
public int getColorId() {
	return ColorId;
}
public void setColorId(int l) {
	ColorId = l;
}
public String getColor() {
	return Color;
}
public void setColor(String color) {
	Color = color;
}

}
