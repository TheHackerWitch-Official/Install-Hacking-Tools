# Project Description
This script installs helpful penetration testing tools and word lists which you may not have on your Linux system. Tested on Kali Linux. 

## Tools 
This table describes the tools installed by the script and their common use cases.

| Tool             | Description                                                                                              | Use Cases                                          |
| ---------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| Bloodhound       | A tool used to visualize and find attack paths in Active Directory environments.                         | Enumeration, Privilege Escalation                  |
| Crackmapexec     | Considered the "Swiss army knife" for pentesting Windows/Active Directory environments.                  | Enumeration, Exploitation                          |
| GoBuster         | A tool used to brute-force directories and files on web servers.                                         | Enumeration, Web Exploitation                      |
| nMap             | A network scanning tool for discovering hosts and services on a network.                                 | Enumeration, Scanning                              |
| Nikto            | A web server vulnerability scanner.                                                                      | Enumeration, Web Exploitation                      |
| WinPeas          | A drag-and-drop Windows privilege escalation tool.                                                       | Enumeration, Privilege Escalation                  |
| Chisel           | A fast TCP/UDP tunnel, transported over HTTP, useful for penetration testing. Great for port forwarding. | Pivoting, Network Exploitation                     |
| Evil-WinRM       | A WinRM shell for penetration testing Windows machines.                                                  | Exploitation, Post-Exploitation                    |
| Impacket scripts | A collection of Python scripts for exploiting Windows environments.                                      | Exploitation, Post-Exploitation                    |
| Metasploit       | A penetration testing framework for exploiting known vulnerabilities.                                    | Exploitation, Post-Exploitation                    |
| Curl             | A command-line tool for transferring data with URL syntax, supports many protocols.                      | Web Exploitation, Enumeration                      |
| sqlmap           | An automatic SQL injection tool.                                                                         | Web Exploitation                                   |
| Git              | A source management tool for code.                                                                       | Scripting, Collaboration, Tooling                  |
| Ruby-Full        | A full installation of the Ruby programming language.                                                    | Scripting, Development, Tooling                    |
| Ghidra           | A reverse engineering framework developed by the NSA.                                                    | Reverse Engineering                                |
| Hydra            | A powerful web login cracker which supports.                                                             | Brute Forcing, Password Cracking, Web Exploitation |
| Hashcat          | An advanced password cracking tool.                                                                      | Password Cracking                                  |


## Wordlists
- All wordlists in Seclists, includes rockyou 

## Using The Script
Use the following commands on a Linux system to run the script. 

```bash
git clone https://github.com/TheHackerWitch-Official/Install-Hacking-Tools.git
cd Install-Hacking-Tools/
chmod +x *.sh 
./getTools.sh
```
