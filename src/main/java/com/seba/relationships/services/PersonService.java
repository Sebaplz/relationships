package com.seba.relationships.services;

import com.seba.relationships.models.Person;
import com.seba.relationships.repositories.PersonRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PersonService {

    private final PersonRepository personRepository;

    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public List<Person> allPersons(){
        return personRepository.findAll();
    }

    public Person createPerson(Person person){
        return personRepository.save(person);
    }

    public List<Person> obtenerNoLicenses(){
        return personRepository.findByNoLicense();
    }

    public Person findPersona(Long id) {
        Optional<Person> optionalBook = personRepository.findById(id);
        return optionalBook.orElse(null);
    }
}
