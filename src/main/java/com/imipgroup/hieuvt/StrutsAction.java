package com.imipgroup.hieuvt;

/**
 * Created by hieu.vutrong on 11/3/2014.
 */
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;

public class StrutsAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
    private String firstName;
    private String lastName;
    private List<String> locations;
    private String location;
    private String message;

    public StrutsAction(){
        setLocations(new ArrayList<String>());
        getLocations().add("Hanoi");
        getLocations().add("Saigon");

    }


    @Override
    public String execute() throws Exception {
        message = "Your entered input values are:";
        return ActionSupport.SUCCESS;
//        return "hoho";
    }

    @Override
    public void validate() {
        if (null == firstName || firstName.length() == 0)
            addActionError(getText("error.firstName.required"));
        if (null == lastName || lastName.length() == 0)
            addActionError(getText("error.lastName.required"));
        if (null == locations || locations.size() == 0)
            addActionError(getText("error.location.required"));
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public List<String> getLocations() {
        return locations;
    }

    public void setLocations(List<String> locations) {
        this.locations = locations;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
