package com.company.app.model;

public class Patient {
    SpecialHandling SpecialHandling;
    String PersonNumber;
    String AGNValidInd;
    String Id;

    public Patient(String personNumber,SpecialHandling specialHandling,  String agnValidInd, String id) {
        SpecialHandling = specialHandling;
        PersonNumber = personNumber;
        AGNValidInd = agnValidInd;
        Id = id;
    }

    public com.company.app.model.SpecialHandling getSpecialHandling() {
        return SpecialHandling;
    }

    public void setSpecialHandling(com.company.app.model.SpecialHandling specialHandling) {
        SpecialHandling = specialHandling;
    }

    public String getPersonNumber() {
        return PersonNumber;
    }

    public void setPersonNumber(String personNumber) {
        PersonNumber = personNumber;
    }

    public String getAGNValidInd() {
        return AGNValidInd;
    }

    public void setAGNValidInd(String AGNValidInd) {
        this.AGNValidInd = AGNValidInd;
    }

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }
}
