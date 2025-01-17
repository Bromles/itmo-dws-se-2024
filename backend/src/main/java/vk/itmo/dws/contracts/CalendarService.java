package vk.itmo.dws.contracts;


import vk.itmo.dws.dto.calendar.CalendarRecordDto;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.entity.User;

import java.util.Collection;
import java.util.Map;
import java.util.UUID;

public interface CalendarService  {
    void createRecord(CalendarRecordDto calendarRecordDto);
    void createRecord(CalendarRecordDto calendarRecordDto, UUID userId);
    User checkUser(UUID userId);
}
