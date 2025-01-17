package vk.itmo.dws.dto.response.booking;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Booking;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookingResponse {
    protected Long id;
    protected ClassResponse aClass;
    protected SectionShortResponse section;

    public BookingResponse(Booking booking) {
        this.id = booking.getId();
        this.section = new SectionShortResponse(booking.getAClass().getSection());
        this.aClass = new ClassResponse(booking.getAClass());
    }
}
