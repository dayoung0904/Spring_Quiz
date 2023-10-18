package com.quiz.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.quiz.booking.bo.BookingBO;
import com.quiz.booking.domain.Booking;


@Controller
public class BookingController {

	@Autowired
	private BookingBO bookingBO;
	// 예약 리스트
		@GetMapping("/booking-list-view")
		public String bookingListView(Model model) {
			List<Booking> bookings = bookingBO.getBooking();
			model.addAttribute("bookings", bookings);
			return "booking/bookingList";
		}
}
