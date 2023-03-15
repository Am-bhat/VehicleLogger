package model;

public class Vehicle {

    private int vehicleId;
    private String vehicleName;
    private int year;
    private String make;
    private String model;
    private int mileage;

    public int getVehicleId() {
        return vehicleId;
    }
    public String getVehicleName() {
        return vehicleName;
    }
    public int year() {
        return year;
    }
    public String getMake() {
        return make;
    }
    public String getModel() {
        return model;
    }
    public int getMileage() {
        return mileage;
    }

    void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }
    void setVehicleName (String vehicleName) {
        this.vehicleName = vehicleName;
    }
    void setYear (int year) {
        this.year = year;
    }
    void setMake (String make) {
        this.make = make;
    }
    void setModel (String model) {
        this.model = model;
    }
    void setMileage (int mileage) {
        this.mileage = mileage;
    }

}
