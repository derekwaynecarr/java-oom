#!/bin/bash

java -server -Xms512M -Xmx512M -XX:+UseLargePages -cp target/oomsimulator.jar com.example.oom.Simulator