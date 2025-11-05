#!/bin/bash

# Author: AKSHAT VERMA
# To stress testing, so that deployment will Auto Scale and create multiple pod through HPA when cpu process will increases.
# version: 1.0.0
# Date 10/31/2025

echo "This is just to provide stress to the apache app created"

while true; do
    curl -s -o /dev/null localhost:80
done