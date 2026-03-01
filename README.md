# hardware-specs

> **BlackRoad OS, Inc.** — Hardware Specifications & Fleet Management

🟢 **Status: Production Ready** | 🏢 **BlackRoad OS, Inc.** | 👔 **CEO: Alexa Amundson**

---

## Table of Contents

1. [Overview](#overview)
2. [Quick Start](#quick-start)
3. [Installation](#installation)
4. [Repository Index](#repository-index)
5. [Fleet Inventory](#fleet-inventory)
6. [Network Map](#network-map)
7. [CLI Reference](#cli-reference)
8. [Dashboard](#dashboard)
9. [Integrations](#integrations)
10. [CI/CD & Automation](#cicd--automation)
11. [Contributing](#contributing)
12. [License](#license)

---

## Overview

**hardware-specs** is the authoritative source of truth for all BlackRoad OS hardware infrastructure. It tracks specifications for the distributed Raspberry Pi edge fleet, cloud servers, and serverless workers that power the BlackRoad AI platform.

| Attribute | Value |
|-----------|-------|
| **Organization** | BlackRoad OS, Inc. |
| **CEO** | Alexa Amundson |
| **Fleet Scale** | 30,000 AI Agents + 30,000 Human Employees |
| **Infrastructure** | 578 repositories across 15 specialized organizations |
| **Core Product** | API layer above Google, OpenAI, and Anthropic |

---

## Quick Start

```bash
# Install via pip
pip install -e .

# List all hardware in the fleet
python src/hardware_specs.py list

# Generate a full fleet report
python src/hardware_specs.py report

# Export specs to JSON
python src/hardware_specs.py export --output fleet.json
```

---

## Installation

### Prerequisites

- Python 3.9+
- pip

### From Source

```bash
git clone https://github.com/BlackRoad-Hardware/hardware-specs.git
cd hardware-specs
pip install -e .
```

### npm (Node.js SDK — Coming Soon)

The BlackRoad hardware-specs SDK will be published to npm for integration in Node.js and browser environments:

```bash
# Coming soon
npm install @blackroad/hardware-specs
```

---

## Repository Index

```
hardware-specs/
├── README.md                          # This file — production index
├── CONTRIBUTING.md                    # Contribution guidelines & brand standards
├── LICENSE                            # Proprietary license terms
├── BLACKROAD_EMOJI_DICTIONARY.md      # Official emoji usage standards
├── TRAFFIC_LIGHT_SYSTEM.md           # Project status indicator system
│
├── src/                               # Python source code
│   ├── hardware_specs.py              # Core CLI — fleet CRUD, reports, JSON export
│   ├── fleet_manager.py               # Fleet orchestration logic
│   ├── device_orchestrator.py         # Device lifecycle management
│   ├── pi-monitor.py                  # Raspberry Pi health monitoring
│   ├── sensor-collector.py            # Sensor data collection
│   └── sensor_simulator.py            # Sensor simulation for testing
│
├── specs/                             # Hardware specification data
│   ├── pi-fleet.yaml                  # Raspberry Pi fleet YAML source of truth
│   └── network.md                     # Network topology & SSH access map
│
├── dashboard/                         # Web-based monitoring dashboards
│   ├── fleet-monitor.html             # Full fleet status dashboard
│   └── pi-status.html                 # Individual Pi status page
│
├── esphome/                           # ESPHome device configurations
│   └── blackroad-node.yaml            # BlackRoad sensor node firmware config
│
├── mqtt/                              # MQTT broker configuration
│   └── broker.conf                    # Mosquitto broker settings
│
├── scripts/                           # Shell automation scripts
│   ├── deploy-fleet.sh                # Fleet deployment automation
│   └── monitor-fleet.sh               # Fleet monitoring & alerting
│
└── templates/                         # System templates
    └── systemd/
        └── blackroad-agent.service.template   # systemd service definition
```

---

## Fleet Inventory

| Device | Model | RAM | Storage | Arch | Role | IP |
|--------|-------|-----|---------|------|------|----|
| **blackroad-pi** | Raspberry Pi 4B | 8 GB | 64 GB + 256 GB NVMe | arm64 | Primary + Tunnel | 192.168.4.64 |
| **aria64** | Raspberry Pi 4B | 8 GB | 128 GB | arm64 | AI Compute (22,500 agents) | 192.168.4.38 |
| **alice** | Raspberry Pi 4B | 4 GB | 32 GB | arm64 | Tertiary Worker | 192.168.4.49 |
| **lucidia** | Raspberry Pi 4B | 4 GB | — | arm64 | Alternate Node | 192.168.4.99 |
| **cloud** | DigitalOcean Droplet | 8 GB | 160 GB SSD | amd64 | Cloud Backup / Failover | 159.65.43.12 |
| **cloudflare-workers** | V8 Isolate | 128 MB | — | wasm | Serverless Edge | — |

Full YAML spec: [`specs/pi-fleet.yaml`](specs/pi-fleet.yaml)

---

## Network Map

```
Internet
    │
    ▼
Cloudflare Edge ──── Tunnel (QUIC) ──► blackroad-pi (192.168.4.64)
                                           │
                                     Local Network (192.168.4.0/24)
                                           │
                    ┌──────────────────────┼──────────────────────┐
                    │                      │                      │
              aria64                     alice               lucidia
           (192.168.4.38)           (192.168.4.49)       (192.168.4.99)
           22,500 agents             Tertiary node        Alternate Pi
```

Full network details: [`specs/network.md`](specs/network.md)

---

## CLI Reference

```
Usage: hardware-specs <command> [options]

Commands:
  list      List all hardware specs
            --role    Filter by role (worker / server / edge / serverless)
            --tag     Filter by tag

  add       Add a new hardware spec
            --cpu     CPU description (required)
            --ram     RAM in GB (required)
            --disk    Storage in GB (required)
            --arch    Architecture: arm64 | amd64 | x86 | wasm (required)
            --role    Role: worker | server | edge | serverless (required)
            --ip      IP address (optional)
            --tags    Comma-separated tags (optional)
            --overwrite  Overwrite if name exists

  report    Generate a full fleet report

  export    Export all specs to JSON
            --output / -o   Output file path (omit to print to stdout)
```

### Examples

```bash
# List workers only
python src/hardware_specs.py list --role worker

# List devices tagged as raspberry-pi
python src/hardware_specs.py list --tag raspberry-pi

# Add a new device
python src/hardware_specs.py add nova \
  --cpu "Broadcom BCM2712 Cortex-A76 @ 2.4GHz (4-core)" \
  --ram 8 --disk 256 --arch arm64 --role worker \
  --ip 192.168.4.100 --tags "raspberry-pi,pi5,production"

# Full fleet report
python src/hardware_specs.py report

# Export to JSON file
python src/hardware_specs.py export -o fleet-export.json
```

---

## Dashboard

Two HTML dashboards are available for real-time fleet monitoring:

| File | Description |
|------|-------------|
| [`dashboard/fleet-monitor.html`](dashboard/fleet-monitor.html) | Full fleet status view |
| [`dashboard/pi-status.html`](dashboard/pi-status.html) | Per-device status page |

Open either file directly in a browser or serve them via any static HTTP server.

---

## Integrations

### Stripe Billing

BlackRoad OS uses Stripe to manage agent compute billing and enterprise subscription plans. The `hardware-specs` repository provides the hardware inventory API that feeds capacity data to the Stripe metered-billing pipeline.

| Billing Event | Source | Stripe Meter |
|---------------|--------|--------------|
| Agent compute hours | `aria64` (22,500 agents) | `agent_compute` |
| Edge request volume | `cloudflare-workers` | `edge_requests` |
| Storage utilization | All nodes | `storage_gb` |

### ESPHome

Sensor nodes are flashed using the config in [`esphome/blackroad-node.yaml`](esphome/blackroad-node.yaml).

### MQTT

The broker configuration lives at [`mqtt/broker.conf`](mqtt/broker.conf). All devices publish telemetry to the central MQTT broker on `blackroad-pi`.

### systemd

Deploy the BlackRoad agent as a managed system service using the template:

```bash
cp templates/systemd/blackroad-agent.service.template \
   /etc/systemd/system/blackroad-agent.service
systemctl enable --now blackroad-agent
```

---

## CI/CD & Automation

| Workflow | File | Description |
|----------|------|-------------|
| CI | [`.github/workflows/ci.yml`](.github/workflows/ci.yml) | Lint, test, validate |
| Deploy | [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml) | Production deployment |
| Auto-deploy | [`.github/workflows/auto-deploy.yml`](.github/workflows/auto-deploy.yml) | Automated fleet rollout |
| Self-healing | [`.github/workflows/self-healing.yml`](.github/workflows/self-healing.yml) | Auto-remediation |
| Security scan | [`.github/workflows/security-scan.yml`](.github/workflows/security-scan.yml) | CodeQL security analysis |
| Auto-merge | [`.github/workflows/blackroad-auto-merge.yml`](.github/workflows/blackroad-auto-merge.yml) | Automated PR merge |

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for brand guidelines, color standards, and contribution workflow.

---

## License

**Copyright © 2026 BlackRoad OS, Inc. All Rights Reserved.**

**PROPRIETARY AND CONFIDENTIAL** — This software is the proprietary property of BlackRoad OS, Inc.

- ✅ **Permitted:** Testing, evaluation, and educational purposes
- ❌ **Prohibited:** Commercial use, resale, or redistribution without written permission

For commercial licensing: **blackroad.systems@gmail.com**

See [LICENSE](LICENSE) for complete terms.
