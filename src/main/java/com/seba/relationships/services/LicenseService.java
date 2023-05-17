package com.seba.relationships.services;

import com.seba.relationships.models.License;
import com.seba.relationships.repositories.LicenseRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LicenseService {

    private final LicenseRepository licenseRepository;

    public LicenseService(LicenseRepository licenseRepository) {
        this.licenseRepository = licenseRepository;
    }

    public License createLicence(License license){
        license.setNumber(String.valueOf(this.generarNumeroLic()));
        return licenseRepository.save(license);
    }

    public List<License> allLicense() {
        return licenseRepository.findAll();
    }

    public int generarNumeroLic(){
        License license = licenseRepository.findTopByOrderByNumberDesc();
        if(license == null){
            return 1;
        }
        int numeroMayor = Integer.parseInt(license.getNumber());
        numeroMayor++;
        return numeroMayor;
    }
}
