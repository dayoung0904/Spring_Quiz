package com.quiz.lesson05.weather_history;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.weather_history.BO.WeatherHistoryBO;
import com.quiz.lesson05.weather_history.domain.WeatherHistory;

@Controller
public class WeatherHistoryController {

	@Autowired
	private WeatherHistoryBO weatherHistoryBO;
	
	// 날씨 목록 화면
	@GetMapping("/weather-history")
	public String weatherHistory(Model model) {
		List<WeatherHistory> weatherHistory = weatherHistoryBO.getWeatherHistory();
		
		model.addAttribute("weatherHistory", weatherHistory);
		return "weather_history/wetherHistory";
	}
	
	// 날씨 추가 화면
	@GetMapping("/add-weather-view")
	public String addWeatherView(
			@RequestParam("date") Date date
			,@RequestParam("weather") String weather
			,@RequestParam("temperatures") double temperatures
			,@RequestParam("precipitation") double precipitation
			,@RequestParam("microDust") String microDust
			,@RequestParam("windSpeed") double windSpeed) {
		
		
		return "weather_history/addWeather";
	}
}
