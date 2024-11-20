package vk.itmo.dws.service;

import vk.itmo.dws.entity.EntityType;

public interface Reviewable {
    Long getId();
    EntityType getType();
}
