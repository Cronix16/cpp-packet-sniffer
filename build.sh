#!/bin/bash
g++ sniffer.cpp -o sniffer -lpcap
echo "Compilation complete! Run the sniffer with: sudo./sniffer"
