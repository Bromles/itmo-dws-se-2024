package vk.itmo.dws.contracts;


import vk.itmo.dws.dto.request.section.SectionCreateRequest;
import vk.itmo.dws.dto.request.section.SectionUpdateRequest;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.entity.User;

import java.util.Collection;
import java.util.Map;
import java.util.Optional;

public interface OrganizationService extends SearchService<Section> {
    Collection<User> getClients(Map<String, String> filter);

}
