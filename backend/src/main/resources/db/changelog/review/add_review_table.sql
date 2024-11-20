CREATE TABLE review
(
    id          SERIAL PRIMARY KEY,
    entity_type VARCHAR(255) NOT NULL,
    entity_id   BIGINT       NOT NULL,
    user_id     VARCHAR(255) NOT NULL,
    content     TEXT         NOT NULL,
    rating      INT CHECK (rating BETWEEN 1 AND 5),
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
