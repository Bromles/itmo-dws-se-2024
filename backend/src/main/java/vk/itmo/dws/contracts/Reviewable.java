package vk.itmo.dws.contracts;

import vk.itmo.dws.entity.EntityType;

public interface Reviewable {
    Long getId();
    EntityType getType();
}
