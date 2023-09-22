package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.domain.RealEstate;
import com.quiz.lesson03.mapper.RealEstateMapper;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateMapper realEstateMapper;
	
	// input: id
	// ouput : RealEstate
	public RealEstate getRealEasteByID(int id) {
		return realEstateMapper.selectRealEstateByID(id);
	}
	
	// input: rentPrice
	// output : List<RealEstate>
	public List<RealEstate> getRealEasteListByPrice(int rent_price) {
		return realEstateMapper.selectRealEstateListByPrice(rent_price);
	}
	
	// input: area, price
	// output: List<RealEstate>
	public List<RealEstate> getRealEasteListByAreaPrice(int area, int price){
		return realEstateMapper.selectRealEasteListByAreaPrice(area, price);
	}
}
