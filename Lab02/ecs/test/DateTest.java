import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class DateTest {

  @Test
  void nextDate_sample() {
    Date d = new Date(2020,5,3);
    assertEquals(new Date(2020,5,4), d.nextDate());
  }

  @Test
  void nextDate_1() {
    Date d = new Date(3456, 03, 27);
    assertEquals(new Date(3456, 03, 28), d.nextDate());
  }

  @Test
  void nextDate_2() {
    Date d = new Date(1800, 11, 29);
    assertEquals(new Date(1800, 11, 30), d.nextDate());
  }
  @Test
  void nextDate_3() {
    Date d = new Date(2020,5,3);
    assertEquals(new Date(2020,5,4), d.nextDate());
  }
  @Test
  void nextDate_4() {
    Date d = new Date(1500, 02, 17);
    assertEquals(new Date(1500, 02, 18), d.nextDate());
  }
  @Test
  void nextDate_5() {
    Date d = new Date(3456, 12, 31);
    assertEquals(new Date(3457, 01, 01), d.nextDate());
  }

//  void nextDate_6() {
//    Date d = new Date(1500, 2, 31);
//    assertEquals(testNextDate , d.nextDate());
//  }
}