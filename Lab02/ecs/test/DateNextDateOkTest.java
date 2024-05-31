
import java.util.LinkedList;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

@RunWith(Parameterized.class)
public class DateNextDateOkTest
{
    private Date expectedResult;
    private Date d;
    private Date expectResult;


    public DateNextDateOkTest(Date d, Date expectedResult){
        this.d = new Date(d.getYear(),d.getMonth(),d.getDay());
        this.expectedResult = new Date(expectedResult.getYear(), expectedResult.getMonth(), expectedResult.getDay());
    }
    @Parameters
    public static List<Date[]> data() {
        List<Date[]> params = new LinkedList<Date[]>();
        params.add(new Date[] { new Date(3456, 3, 27), new Date(3456, 3, 28)});
        params.add(new Date[] { new Date(1800, 11, 29), new Date(1800, 11, 30)});
        params.add(new Date[] { new Date(2005,4, 30), new Date(2005, 05, 01)});

        return params;
    }

    @Test
    public void TestNextDate() {
        Date nextDate = d.nextDate();
        Assert.assertEquals(expectedResult, nextDate);
    }

}