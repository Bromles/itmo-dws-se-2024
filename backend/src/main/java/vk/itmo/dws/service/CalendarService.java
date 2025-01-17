package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import vk.itmo.dws.contracts.SectionService;
import vk.itmo.dws.dto.calendar.CalendarRecordDto;
import vk.itmo.dws.entity.CalendarRecord;
import org.modelmapper.ModelMapper;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.exception.UserNotFoundException;
import vk.itmo.dws.repository.CalendarRecordRepository;
import vk.itmo.dws.repository.UserRepository;

import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class CalendarService implements vk.itmo.dws.contracts.CalendarService {
    private final SectionService sectionService;
    private final UserRepository userRepository;
    private final CalendarRecordRepository calendarRecordRepository;
    private final ModelMapper modelMapper = new ModelMapper();

    public void createRecord(CalendarRecordDto calendarRecordDto){
        User foundUser = checkUser(SecurityWorkspace.getAuthUserId());
        CalendarRecord record = modelMapper.map(calendarRecordDto, CalendarRecord.class);
        record.setUser(foundUser);
        calendarRecordRepository.save(record);
    }

    public void createRecord(CalendarRecordDto calendarRecordDto, UUID userId){
        User foundUser = checkUser(userId);
        CalendarRecord record = modelMapper.map(calendarRecordDto, CalendarRecord.class);
        record.setUser(foundUser);
        calendarRecordRepository.save(record);
    }

    public User checkUser(UUID userId) {
        Optional<User> user = userRepository.findById(userId);
        if (user.isEmpty()) {
            throw new UserNotFoundException(userId);
        } else {
            return user.get();
        }
    }

}
