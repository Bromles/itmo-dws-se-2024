package vk.itmo.dws.controllers.payment;

import org.apache.commons.lang3.stream.IntStreams;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vk.itmo.dws.dto.payment.MerchantCreateRequestDto;
import vk.itmo.dws.dto.payment.OperationDto;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.logging.Logger;

/**
 * Котроллер-затычка для взаимодействия с логикой оплаты
 */

//TODO добавить в мут для security

@RestController
@CrossOrigin
@RequestMapping("/api/v1/payments")
public class PaymentApiController implements PaymentApi{

    private final Logger logger = Logger.getLogger(this.getClass().getName());
    private final Random random = new Random();

    @Override
    public OperationDto createPayment() {
        logger.info("Creating payment request....");
        return new OperationDto("35435345", "BANK CARD", 500_000L, LocalDateTime.now());
    }

    @Override
    public List<OperationDto> getAllPayments() {
        List<OperationDto> payments = new ArrayList<>();
        IntStreams.range(10).forEach(i -> payments.add(new OperationDto(String.valueOf(random.nextInt(10)),
                "BANK CARD", 500_000L, LocalDateTime.now())));
        return payments;
    }

    @Override
    public void createClientAccount() {
        logger.info("Creating new client account.....");
    }

    @Override
    public void createMerchantAccount(MerchantCreateRequestDto merchantCreateRequestDto) {
        logger.info("Creating new merchant account.....");
    }

    @Override
    public void updateMerchantAccount(MerchantCreateRequestDto merchantCreateRequestDto) {
        logger.info("Update merchant account.....");
    }
}
