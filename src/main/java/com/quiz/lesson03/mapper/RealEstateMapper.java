package com.quiz.lesson03.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.domain.RealEstate;

@Repository
public interface RealEstateMapper {

	public RealEstate selectRealEstateByID(int id);
	
	public List<RealEstate> selectRealEstateListByPrice(
			@Param("rent_price")int rent_price);
	
	public List<RealEstate> selectRealEasteListByAreaPrice(
			@Param("area") int area, @Param("price") int price);
}
