# java-oom
Simple Java application that keeps consuming memory

To build and use with a 64M heap size:

```sh
$ mvn package
$ java -server -Xms64M -Xmx64M -cp target/oomsimulator.java com.example.oom.Simulator
.......Exception in thread "main" java.lang.OutOfMemoryError: Java heap space
        at java.util.Arrays.copyOf(Arrays.java:3332)
        at java.lang.AbstractStringBuilder.ensureCapacityInternal(AbstractStringBuilder.java:124)
        at java.lang.AbstractStringBuilder.append(AbstractStringBuilder.java:448)
        at java.lang.StringBuilder.append(StringBuilder.java:136)
        at com.example.oom.Simulator.main(Simulator.java:11)
```

The application is useful for testing memory consumption.