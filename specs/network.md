# BlackRoad Hardware — Network Map

Last verified: **2026-03-25** (live ARP scan + SSH from all reachable nodes)

For live data, run from any fleet node:
```bash
# Full fleet scan
ssh blackroad@alice "ip neigh"
ssh pi@octavia "ip neigh"
ssh blackroad@lucidia "ip neigh"

# Device scan
nmap -sT --top-ports 100 192.168.4.0/24
```

```
Internet
    │
    ├──► Gematria (DO NYC3, Caddy TLS, 151 domains)
    │        │ (WireGuard tunnel)
    │
    ├──► Anastasia (DO NYC1, failover)
    │        │ (WireGuard tunnel)
    │
    ▼
eero Mesh Router (.1)
    │
    ├── Alexandria (Mac M1)              ██ UP     Founder workstation
    ├── Alice (Pi 5)                     ██ UP     Gateway, DNS, DB, cache, vector
    ├── Cecilia (Pi 5, Pironman+Hailo-8) ░░ DOWN   AI inference, object storage
    ├── Octavia (Pi 5, Pironman+Hailo-8) ██ UP     Platform, Git, Workers, NVMe
    ├── Aria (Pi 5, ElectroCookie)       ░░ DOWN   Monitoring, mesh
    ├── Lucidia (Pi 5, ElectroCookie)    ██ UP     Apps, DNS, CI/CD
    │
    │── Consumer ──
    ├── Apple TV (AirPlay on port 5000)
    ├── Roku x2
    ├── AltoBeam streaming device
    └── 3x phones/tablets (randomized MACs)
```

## Fleet Status

| Node | Model | Case | Status | Key Role |
|------|-------|------|--------|----------|
| Alexandria | MacBook Pro M1 | — | UP | Founder workstation |
| Alice | Pi 5 (8GB) | Standard | UP | Gateway, DNS, DB, cache, vector |
| Cecilia | Pi 5 (8GB) | Pironman 5-MAX + Hailo-8 | DOWN | AI inference, object storage |
| Octavia | Pi 5 (8GB) | Pironman 5-MAX + Hailo-8 | UP (34C) | Platform, Git, Workers, NVMe |
| Aria | Pi 5 (8GB) | ElectroCookie | DOWN | Monitoring, mesh |
| Lucidia | Pi 5 (8GB) | ElectroCookie | UP | Apps, DNS, CI/CD |
| Gematria | DO Droplet | — | UP | TLS edge, 151 domains |
| Anastasia | DO Droplet | — | UP | Backup, failover |

## Compute Summary

- **Total AI compute:** 52 TOPS (2x Hailo-8, 26 each)
- **Total NVMe storage:** 2TB+ (Octavia 1TB + Cecilia 1TB)
- **Total SD storage:** ~650GB across fleet
- **Total USB storage:** 1TB (Lucidia SanDisk)
- **Network:** eero mesh WiFi, WireGuard tunnels to droplets

## Notes

- IPs, MACs, and credentials are NOT stored in this repo
- See `blackroad-vault.sh` for credential management
- See `/etc/hosts` or WireGuard configs on each node for IP assignments
- Cecilia and Aria need physical intervention (power cycle or SD check)
