package vk.itmo.dws.entity;

import jakarta.annotation.Nullable;
import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.modelmapper.internal.bytebuddy.implementation.bind.annotation.Default;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.LocalDateTime;
import java.time.Period;

@Entity
@Data
@Table(name = "abonement_usage")
@Getter
@Setter
public class AbonementUsage  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "abonement_id", nullable = false)
    private Abonement abonement;

    @Column(name = "activation_date", nullable = false)
    private LocalDateTime activationDate;

    @Column(name = "disable_date", nullable = false)
    private LocalDateTime disableDate;

    @Nullable
    @Column(name = "classes_passed", nullable = false)
    private Long classesPassed;

    @CreatedDate
    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;
}
