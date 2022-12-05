package ru.gulliver.models.google.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.gulliver.models.google.service.GoogleSheetsService;

import java.io.IOException;
import java.security.GeneralSecurityException;

@RestController
@RequestMapping(value = "/googlesheets")
public class GoogleSheetsController {

    @Autowired
    private GoogleSheetsService googleSheetsService;

    @GetMapping(value = "/ping")
    public String getSpreadsheetValues() throws IOException, GeneralSecurityException {
        googleSheetsService.getSpreadsheetValues();
        return "OK";
    }
}
