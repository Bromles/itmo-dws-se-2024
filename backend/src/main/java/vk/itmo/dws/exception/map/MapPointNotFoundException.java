package vk.itmo.dws.exception.map;

public class MapPointNotFoundException extends RuntimeException {

    public MapPointNotFoundException(Long id) {
        super("MapPoint with id " + id + " not found");
    }
}
