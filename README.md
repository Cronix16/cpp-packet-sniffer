# Custom C++ Netwrok Packet Sniffer

#Objective
Developed a low-level packet sniffer in C++ to intercept and analyze live network traffic at the data link layer. This project demonstrates core system engineering principles, memory management and direct hardware interaction using the 'libpcap' library.

#How it works
This tool uses the 'libpcap' library to put my Linux network card into 'Promiscuous Mode', meaning it catches raw electrical signals on the network before they are filtered.
When it catches a packet, the hardware hands my program a raw array of bytes in memory. I learned that you don't need complex parsing algorithms, you can just extract the routing data by just reading the exact array slots directly:
*Array Slots 0-5: Destination MAC Address;
*Array Slots 6-11: Source MAC Address;
*Array Slots 12-13: Protocol Type (like IPv4 or ARP).

#How to run it
1. Install the required tools: 'sudo apt install build-essential libpcap-dev'.
2. Compile the code: './build.sh' (or manually run: 'g++ sniffer.cpp -o sniffer -lpcap').
3. Run the sniffer: 'sudo ./sniffer'.
