/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controll;

import DAL.CarDAO;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bill;
import model.BookingBill;
import model.Car;

/**
 *
 * @author Administrator
 */
public class Test {
    
    public static void main(String[] args) {
        CarDAO dao = new CarDAO();
        ArrayList<Car> list = null;
        list = dao.getCarPage(1, 5);
        for (Car car : list) {
            System.out.println(car.getName());
        }
        System.out.println(dao.getTotalNumberRow("Cars"));
    }
}
