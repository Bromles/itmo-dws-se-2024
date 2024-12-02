package vk.itmo.dws.controllers;


import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.modelmapper.ModelMapper;

@AllArgsConstructor
@NoArgsConstructor
public abstract class BaseController {
    protected ModelMapper mapper = new ModelMapper();

}
