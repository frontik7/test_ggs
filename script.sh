#!/bin/bash

grep -i google test.txt | awk '{print$7}' | grep .htm

