package vk.itmo.dws.entity;

public enum EntityType {
    PRODUCT;


    public static EntityType fromString(String type) {
        try {
            return EntityType.valueOf(type.toUpperCase());
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException();
        }
    }
}
