--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 10beta1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


ALTER TABLE payment_p2017_06
    ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    ADD FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
    ADD FOREIGN KEY(rental_id) REFERENCES rental(rental_id);
