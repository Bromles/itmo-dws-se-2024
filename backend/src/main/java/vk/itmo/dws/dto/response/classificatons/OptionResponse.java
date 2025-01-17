package vk.itmo.dws.dto.response.classificatons;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import vk.itmo.dws.entity.Option;

import java.io.Serializable;

/**
 * DTO for {@link vk.itmo.dws.entity.Option}
 */
@AllArgsConstructor
@Getter
@ToString
@NoArgsConstructor
public class OptionResponse implements Serializable {
    private String key;
    private String value;
    private String operator;

    public OptionResponse(Option option) {
        this.key = option.getKey();
        this.value = option.getValue();
        this.operator = option.getOperator().getSymbol();
    }
}