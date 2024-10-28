package vk.itmo.dws.controllers.abonement;

import org.apache.commons.lang3.stream.IntStreams;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vk.itmo.dws.dto.abonement.MerchantCreateRequestDto;
import vk.itmo.dws.dto.abonement.AbonementDto;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.logging.Logger;

/**
 * Котроллер-затычка для взаимодействия с абонементами
 */

@RestController
@CrossOrigin
@RequestMapping("/api/v1/abonement")
public class AbonementApiController implements AbonementApi{

    private final Logger logger = Logger.getLogger(this.getClass().getName());
    private final Random random = new Random();

    @Override
    public OperationDto createAbonement() {
        logger.info("Creating abonement request....");
        return new AbonementDto("35435345", "BANK CARD", 500_000L, LocalDateTime.now());
    }

    @Override
    public List<OperationDto> getAllAbonements() {
        List<OperationDto> abonements = new ArrayList<>();
        IntStreams.range(10).forEach(i -> abonements.add(new OperationDto(String.valueOf(random.nextInt(10)),
                "BANK CARD", 500_000L, LocalDateTime.now())));
        return abonements;
    }


    @Override
    public OperationDto buyAbonement() {
        logger.info("Buying abonement request....");
        return new AbonementDto("35435345", "1 month", 500_000L, LocalDateTime.now()); //TODO
    }

    @Override
    public OperationDto cancelAbonement() {
        logger.info("Canceling abonement request....");
        return new AbonementDto("35435345", "1 month", 500_000L, LocalDateTime.now()); //TODO
    }

    @Override
    public OperationDto deleteAbonement() {
        logger.info("Deleting abonement request....");
        return new AbonementDto("35435345", "1 month", 500_000L, LocalDateTime.now()); //TODO
    }

}
