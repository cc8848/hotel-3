package dao;

import bean.room;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by tkai on 2017/5/15.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class RoomDaoTest {
    @Test
    public void saveRoom() throws Exception {

    }

    @Test
    public void findRoombyHid() throws Exception {

    }

    @Test
    public void updateRoom() throws Exception {
    }

    @Autowired
    private RoomDao roomDao;
    @org.junit.Test
    public void findRoomById() throws Exception {
        room room=new room();
        room=roomDao.findRoomById(1);
        System.out.println(room.getType());
    }

    @org.junit.Test
    public void findHotelById() throws Exception {
    }

}