--liquibase formatted sql
--changeset maxim:1

CREATE TABLE public.abonement (
      id int8 GENERATED BY DEFAULT AS IDENTITY (INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) PRIMARY KEY,
      user_id int8 NOT NULL,
      title varchar(100) NOT NULL,
      duration int NOT NULL,
      section_id int8 NOT NULL,
      activation_date timestamp NOT NULL,
      price numeric(10, 2) NOT NULL
      --FOREIGN KEY (user_id) REFERENCES public.merchant_account(user_id) ON DELETE CASCADE, TODO
      --FOREIGN KEY (section_id) REFERENCES public.section(id) ON DELETE CASCADE TODO
);