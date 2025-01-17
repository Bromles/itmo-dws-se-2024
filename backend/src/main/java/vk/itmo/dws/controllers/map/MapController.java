package vk.itmo.dws.controllers.map;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.web.bind.annotation.*;
import vk.itmo.dws.dto.request.map.MapPointRequestDto;
import vk.itmo.dws.dto.response.map.MapPointResponseDto;
import vk.itmo.dws.dto.response.map.NewMapPointResponseDto;
import vk.itmo.dws.entity.MapPoint;
import vk.itmo.dws.exception.map.MapPointNotFoundException;
import vk.itmo.dws.repository.MapPointRepository;

import java.util.List;

@RestController
@RequestMapping("/api/v1/maps")
@RequiredArgsConstructor
public class MapController {

    private final MapPointRepository mapPointRepository;
    private final ModelMapper modelMapper = new ModelMapper();

    @PostMapping
    public NewMapPointResponseDto addNewMapPoint(@RequestBody MapPointRequestDto mapPointDto) {
        MapPoint newMapPoint = mapPointRepository.save(modelMapper.map(mapPointDto, MapPoint.class));
        return new NewMapPointResponseDto(newMapPoint.getId());
    }

    @GetMapping
    public List<MapPointResponseDto> getAllMapPoints() {
       return mapPointRepository.findAll().stream().map(el -> modelMapper.map(el, MapPointResponseDto.class)).toList();
    }

    @PutMapping("/{point_id}")
    public void changeMapPoint(@RequestBody MapPointRequestDto mapPoint, @PathVariable(value = "point_id") long pointId) {
        MapPoint foundMapPoint = mapPointRepository.findById(pointId).orElse(null);
        if (foundMapPoint == null) {
            throw new MapPointNotFoundException(pointId);
        } else {
            MapPoint updatedMapPoint = modelMapper.map(mapPoint, MapPoint.class);
            updatedMapPoint.setId(pointId);
            mapPointRepository.save(updatedMapPoint);
        }
    }
}
