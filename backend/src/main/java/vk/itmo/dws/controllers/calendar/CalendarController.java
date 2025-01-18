package vk.itmo.dws.controllers.calendar;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.contracts.CalendarService;
import vk.itmo.dws.dto.calendar.CalendarRecordDto;
import vk.itmo.dws.entity.CalendarRecord;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.repository.CalendarRecordRepository;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/cal_records")
@RequiredArgsConstructor
public class CalendarController {
    private final CalendarRecordRepository calendarRecordRepository;
    private final CalendarService calendarService;
    private final ModelMapper modelMapper = new ModelMapper();

    @PostMapping("/{user_id}")
    public void addCalendarRecord(@PathVariable(value = "user_id") UUID userId, @RequestBody CalendarRecordDto calendarRecordDto) {
        calendarService.createRecord(calendarRecordDto, userId);
    }

    @PostMapping("")
    public void addCalendarRecord(@RequestBody CalendarRecordDto calendarRecordDto) {
        calendarService.createRecord(calendarRecordDto);
    }



    @DeleteMapping("/{record_id}")
    public void removeCalendarRecord(@PathVariable(value = "record_id") Long recordId) {
        calendarRecordRepository.deleteById(recordId);
    }

    @GetMapping("/{user_id}")
    public List<CalendarRecordDto> getCalendarRecordsForUser(@PathVariable(value = "user_id") UUID userId) {
        User foundUser = calendarService.checkUser(userId);
        return foundUser.getCalendarRecords().stream().map(record -> modelMapper.map(record, CalendarRecordDto.class)).toList();
    }



}
