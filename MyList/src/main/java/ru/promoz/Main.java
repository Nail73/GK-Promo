package ru.promoz;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class Main {
    public static void main(String[] args) {

        Integer[] list1 = new Integer[]{1, 2, 3, 4, 5};
        String[] list2 = new String[]{
                "IT company",
                "Construction company",
                "Consulting company",
                "Accounting company",
                "Outsourcing company"
        };
        Object[] list3 = new Object[]{10, "Tax", 20.0, 'A'};

        MyList<Integer> myList1 = new MyList<>();
        myList1.addAll(List.of(list1));
        MyList<String> myList2 = new MyList<>();
        myList2.addAll(List.of(list2));
        MyList<Object> myList3 = new MyList<>();
        myList3.addAll(List.of(list3));

        myList1.sort(Comparator.naturalOrder());
        myList2.sort(Comparator.comparing(String::toString));
        myList3.sort(Comparator.comparing(Object::toString));
        System.out.println(Arrays.toString(myList1.toArray()));
        System.out.println(Arrays.toString(myList2.toArray()));
        System.out.println(Arrays.toString(myList3.toArray()));

        System.out.println("Collection size myList1: " + myList1.size());
        System.out.println("Collection size myList2: " + myList2.size());
        System.out.println("Collection size myList3: " + myList3.size());

        System.out.println(myList1.isEmpty());
        System.out.println(myList2.contains("IT company"));
        System.out.println(Arrays.toString(myList3.toArray()));
        System.out.println(myList1.remove(2));
        System.out.println("Collection size myList1, after deletion: " + myList1.size());
        System.out.println(myList3.retainAll(myList3));
        System.out.println(myList2.subList(2, 4));
        System.out.println(myList2.toString());

        System.out.println(myList1.getAuthor());
    }
}
