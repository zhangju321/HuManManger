package com.aaa.dao;

import java.util.List;

import com.aaa.entity.Person;

public interface PerDao {
public List<Person> find();
public int save(Person p);
}
