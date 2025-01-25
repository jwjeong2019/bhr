package com.erp.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;

import com.erp.dto.WorkHistoryDto;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ErpUtils {
	
	public static LocalDate convertJsonToLocalDate(String dateString) {
		return LocalDate.parse(dateString, DateTimeFormatter.ISO_DATE);
	}
	
	public static List<WorkHistoryDto> convertJsonToWorkHistoryDtoList(String arrString) throws JsonMappingException, JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		return Arrays.asList(mapper.readValue(arrString, WorkHistoryDto[].class));
	}
	
	public static Integer convertStringToInteger(String s) {
		Integer i = null;
		if (s != null && !s.isEmpty()) {
			i = Integer.parseInt(s);
		}
		return i;
	}

}
