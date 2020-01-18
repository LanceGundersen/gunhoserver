# gunhoserver
Personal Server Setup Scripts

## Target Platform
Home server running Ubuntu Server 18.04 LTS

## Setup Scripts
- Apply Latest Updates & Upgrades
- Enable canonical livepatch service
- Install Docker CE
- Install Portainer (optional)
- Install OpenVPN (optional)

## Setup Instructions
1. Do a base installation of [Ubuntu Server 18.04 LTS](https://ubuntu.com/download/server)
2. SSH in `ssh <username>@<ipaddress>`
3. Clone this repository `git clone https://github.com/LanceGundersen/gunhoserver.git`
4. Change Directory to the repo `cd gunhoserver`
5. Modify permissions for the start file `sudo chmod -x start.sh`
6. Execute the start file `. start.sh`
