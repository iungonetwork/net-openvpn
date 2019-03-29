# OpenVPN service #

This service is part of service gateway and is not intended to run as standalone.
Expects mounted /pki (managed by net-pkim service) with /pki/certs/server.crt, /pki/certs/server.key and /pki/ca.crt. Expects mounted /etc/openvpn/ccd directory with individual setting for each client.

OpenVPN configuration for IUNGO network. Notable settings:
- individual settings for each client,
- reporting all client connects/disconnects updates to controller via REST,
- clients are isolated from each other,
- clients should add routes to desired services by themselves,
- configured to forward packets to freeradius and controller services