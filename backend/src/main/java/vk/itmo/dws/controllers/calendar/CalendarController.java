package vk.itmo.dws.controllers.calendar;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.dto.calendar.CalendarRecordDto;
import vk.itmo.dws.entity.CalendarRecord;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.exception.UserNotFoundException;
import vk.itmo.dws.repository.CalendarRecordRepository;
import vk.itmo.dws.repository.UserRepository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/cal_records")
@RequiredArgsConstructor
public class CalendarController {

    private final CalendarRecordRepository calendarRecordRepository;
    private final UserRepository userRepository;
    private final ModelMapper modelMapper = new ModelMapper();

    @PostMapping("/{user_id}")
    public void addCalendarRecord(@PathVariable(value = "user_id") UUID userId, @RequestBody CalendarRecordDto calendarRecordDto) {
        User foundUser = checkUser(userId);
        CalendarRecord record = modelMapper.map(calendarRecordDto, CalendarRecord.class);
        record.setUser(foundUser);
        calendarRecordRepository.save(record);
    }

    @DeleteMapping("/{record_id}")
    public void removeCalendarRecord(@PathVariable(value = "record_id") Long recordId) {
        calendarRecordRepository.deleteById(recordId);
    }

    @GetMapping("/{user_id}")
    public List<CalendarRecordDto> getCalendarRecordsForUser(@PathVariable(value = "user_id") UUID userId) {
        User foundUser = checkUser(userId);
        return foundUser.getCalendarRecords().stream().map(record -> modelMapper.map(record, CalendarRecordDto.class)).toList();
    }

    private User checkUser(UUID userId) {
        Optional<User> user = userRepository.findById(userId);
        if (user.isEmpty()) {
            throw new UserNotFoundException(userId);
        } else {
            return user.get();
        }
    }


}
