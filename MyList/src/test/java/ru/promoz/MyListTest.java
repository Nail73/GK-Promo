package ru.promoz;

import junit.framework.TestCase;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class SizeTest extends TestCase {

    MyList<String> item;

    @Override
    public void setUp() throws Exception {
        String[] list = new String[]{
                "IT company",
                "Construction company",
                "Consulting company",
                "Accounting company",
                "Outsourcing company"
        };

        item = new MyList<>();
        item.add(Arrays.toString(list));


    }
    @Test
    public void bruteForceSearchInList() {
        boolean actual = MyList.bruteForceSearchInList(item, "IT company");
        boolean expected = true;
        assertEquals(expected, actual);

    }

    @Override
    protected void tearDown() throws Exception {
        super.tearDown();
    }


}