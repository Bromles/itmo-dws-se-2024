package vk.itmo.dws.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import vk.itmo.dws.dto.response.classes.ClassResponse;

import java.util.List;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class ListResponse<T> {
    private List<T> data;

}
