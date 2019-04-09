#!/bin/bash

cd ..
./kscompose stop
export nodeName=unittest
./scompose up -d