# PMKID Attack with Hashcat

## Overview

### 1. PMKID Attack:

- In a WPA/WPA2-PSK Wi-Fi network, the pre-shared key is used to derive the Pairwise Transient Key (PTK) that encrypts the communication between a client and an access point.
- The PMKID is a hash of the pre-shared key and the SSID (Service Set Identifier) of the Wi-Fi network.
- The PMKID is generated during the initial handshake process when a client connects to a Wi-Fi network.

### 2. Capture PMKID:

- Attackers capture the PMKID by sniffing the 4-way handshake during the connection process between a client and an access point.
- The handshake process occurs when a device attempts to connect to a Wi-Fi network, and it involves the exchange of messages to establish a secure connection.
- To capture this PMKID, use hcxdumptool and to strip the data, use hcxpcapngtool

### 3. Cracking with Hashcat:

- Once the PMKID is captured, it can be used as input for hashcat, a powerful password cracking tool.
- Hashcat supports various attack modes, and for WPA/WPA2-PSK, it often involves dictionary or brute-force attacks.
- Hashcat can efficiently use the GPU's parallel processing capabilities to speed up the password cracking process.

## Recommendations to Mitigate PMKID Attacks:

- Use a strong and complex pre-shared key: A longer and more complex pre-shared key makes it harder for attackers to crack through brute-force or dictionary attacks.
- Implement WPA3: WPA3, the successor to WPA2, introduces stronger security protocols and is resistant to common attacks that target WPA2.

It's important to note that attempting to crack Wi-Fi passwords without authorization is illegal and unethical. Ethical hacking, which involves security professionals testing the security of systems with the owner's consent, is the appropriate context for using tools like hashcat.

Security awareness and the use of robust security practices, such as strong, unique passwords and the adoption of the latest security protocols, are essential to mitigate the risks associated with PMKID attacks and similar threats.
