package com.example.oom;

import java.util.*;

public class Simulator {
    public static void main(String[] args) throws Exception {
        Map<Long, String> map = new HashMap<Long, String>();
        for (long i = 1; true; i++) {
            StringBuilder sb = new StringBuilder();
            for (long j = 0; j < i; j++) {
                sb.append("x");
            }
            map.put(i, sb.toString());

            if (i % 1000 == 0) {
                System.out.print(".");
                Thread.sleep(1000);
            }
        }
    }
}

