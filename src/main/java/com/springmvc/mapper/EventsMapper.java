package com.springmvc.mapper;
import com.springmvc.bean.EventsBean;
import com.springmvc.model.Events;

public class EventsMapper {
	
	public static void createEventsBean(EventsBean bean, Events events) {
		bean.setId(events.getId());
		bean.setAddress(events.getaddress());
		bean.setBuyurl(events.getbuyurl());
		bean.setCost(events.getcost());
		bean.setEvent_date(events.getevent_date());
		bean.setEvent_time(events.getevent_time());
		bean.setUrl(events.geturl());
		bean.setImg_name(events.getimg_name());
	}

}
