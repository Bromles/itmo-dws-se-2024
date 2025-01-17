package vk.itmo.dws.dto.request.classifications;

import lombok.Data;

@Data
public class OptionUpdateRequest {
    private String key;
    private String value;
    private String operator;

}
