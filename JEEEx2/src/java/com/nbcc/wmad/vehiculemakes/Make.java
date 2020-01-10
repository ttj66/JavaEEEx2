/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbcc.wmad.vehiculemakes;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author joe
 */
public class Make {

    private int id;
    private String name;
    private List<Make> mockData = new ArrayList();

    public List<Make> getMakes() {
        return mockData;
    }
/**
 * Qwery the in memery mockdata using streams filter and filter
 * @param id
 * @return 
 */
    public Make getMake(int id) {
        List<Make> query = mockData.stream().filter(make -> make.getId() == id).collect(Collectors.toList());
        return query.get(0);
    }

    private void buildMockData() {
        this.mockData.add(new Make(mockData.size() + 1, "Jeep"));
        this.mockData.add(new Make(mockData.size() + 1, "Toyata"));
        this.mockData.add(new Make(mockData.size() + 1, "LandCruiser"));
        this.mockData.add(new Make(mockData.size() + 1, "Chevrolet"));
        this.mockData.add(new Make(mockData.size() + 1, "Mercedes"));
    }

    //<editor-fold defaultstate="collapsed" desc="props">
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
//</editor-fold>

    public Make(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Make() {
        buildMockData();
    }

}
