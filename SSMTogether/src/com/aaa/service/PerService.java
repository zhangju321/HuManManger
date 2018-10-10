package com.aaa.service;

import java.util.List;

import com.aaa.entity.Person;

public interface PerService {
public List<Person> find();
public int save(Person p);
}
