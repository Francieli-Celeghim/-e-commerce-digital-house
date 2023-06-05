package com.dh.ecommerceprof.controller.exceptions;

import com.dh.ecommerceprof.service.exceptions.BDExcecao;
import com.dh.ecommerceprof.service.exceptions.RecursoNaoEncontrado;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import java.time.Instant;

@ControllerAdvice
public class ManipuladorDeExcecoes {

    @ExceptionHandler(RecursoNaoEncontrado.class)
    public ResponseEntity<ErroPadrao> entidadeNaoEncontrada(
            RecursoNaoEncontrado e, HttpServletRequest request) {
        ErroPadrao ep = new ErroPadrao();
        ep.setTimestamp(Instant.now());
        ep.setStatus(HttpStatus.NOT_FOUND.value());
        ep.setError("RECURSO NÃO ENCONTRADO.");
        ep.setMessage(e.getMessage());
        ep.setPath(request.getRequestURI());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(ep);
    }

    @ExceptionHandler(BDExcecao.class)
    public ResponseEntity<ErroPadrao> database(
            BDExcecao e, HttpServletRequest request) {
        HttpStatus status = HttpStatus.BAD_REQUEST;
        ErroPadrao ep = new ErroPadrao();
        ep.setTimestamp(Instant.now());
        ep.setStatus(status.value());
        ep.setError("EXCEÇÃO DE BANCO DE DADOS - INTEGRIDADE");
        ep.setMessage(e.getMessage());
        ep.setPath(request.getRequestURI());
        return ResponseEntity.status(status).body(ep);
    }

}
