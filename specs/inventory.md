# BlackRoad Hardware — Complete Inventory

All hardware owned by BlackRoad OS, Inc. Categorized by function.

## Compute Nodes

### Raspberry Pi 5 (4x)

| Unit | Case | Accelerator | Storage | Role |
|------|------|-------------|---------|------|
| Alice | Standard | — | 16GB SD | Gateway |
| Cecilia | Pironman 5-MAX | Hailo-8 (26 TOPS) | SD + Crucial P310 1TB NVMe | Inference |
| Octavia | Pironman 5-MAX | Hailo-8 (26 TOPS) | 128GB SD + Crucial P310 1TB NVMe | Platform |
| Aria | ElectroCookie Mini Tower | — | SD | Monitoring |
| Lucidia | ElectroCookie Mini Tower | — | 256GB SD + SanDisk Extreme 1TB USB | Apps |

Note: 5 Pi 5s listed above but inventory shows purchases of (2x) Pi 5 8GB + (1x) Pi 5 8GB + existing units = 5 total Pi 5s.

### Raspberry Pi 4B (1x)
- FPVERA Remote Control Server (ATX control, HDMI capture, PoE, OLED display, metal enclosure)

### Raspberry Pi 400 (1x)
- Keyboard computer, US layout, 16GB SD included

### Raspberry Pi Zero (2x)
- Raspberry Pi Zero 2 WH Kit
- Raspberry Pi Zero W Basic Starter Kit (Black Case)

### DigitalOcean Droplets (2x)
- Gematria (NYC3, 80GB SSD) — TLS edge
- Anastasia (NYC1, 25GB SSD) — backup

### Mac (1x)
- MacBook Pro M1 2020 (Alexandria), 16GB RAM, 500GB SSD

### Legacy (not in active fleet)
- MacBook Pro Retina 15" Mid 2014
- iPad Pro 12.9 1st Gen

## AI Accelerators

| Device | TOPS | Interface | Installed On | Price |
|--------|------|-----------|-------------|-------|
| Hailo-8 M.2 | 26 | M.2 PCIe | Cecilia (Pironman) | $214.99 |
| Hailo-8 M.2 | 26 | M.2 PCIe | Octavia (Pironman) | $214.99 |
| **Total** | **52 TOPS** | | | |

## Cases & Cooling

| Item | Qty | For | Price |
|------|-----|-----|-------|
| Pironman 5-MAX (Dual NVMe, OLED, RGB fans, safe shutdown) | 2 | Cecilia, Octavia | ~$80 ea |
| ElectroCookie Mini Tower (aluminum, RGB ambient light, fan) | 2 | Aria, Lucidia | $32.99 ea |
| ElectroCookie Active Cooler (aluminum heatsink + fan, RGB) | 1 | spare | $9.99 |
| ElectroCookie Pi 4 Radial Cooling Tower | 1 | Pi 4B | $13.99 |
| GeeekPi Armor Lite V5 Cooler | 1 | spare Pi 5 | $11.99 |

## Storage

| Item | Qty | Capacity | Interface | Price |
|------|-----|----------|-----------|-------|
| Crucial P310 NVMe SSD | 2 | 1TB | PCIe Gen4 M.2 | ~$60 ea |
| Crucial P310 NVMe SSD | 1 | 500GB | PCIe Gen4 M.2 | ~$40 |
| Samsung EVO Select microSD | 1 | 256GB | UHS-I U3 A2 | $22.17 |
| SanDisk Extreme USB SSD | 1 | 1TB | USB 3.2 | ~$80 |

## Microcontrollers & Dev Boards

### ESP32 Family

| Item | Qty | Price |
|------|-----|-------|
| ESP32-S3 SuperMini (Type-C, dual-core, WiFi+BT) | 10 (2x 5-pack) | $21.99 x2 |
| ESP32-S3 N8R8 (WiFi+BT, dual Type-C) | 2 | $18.04 |
| ESP32 2.8" Touchscreen (ILI9341, 240x320) | 4 | $19.98 x? |

### Raspberry Pi Pico

| Item | Qty | Price |
|------|-----|-------|
| Raspberry Pi Pico (RP2040, dual-core ARM M0+) | 4 (2x 2-pack) | $14.59 x2 |

### Arduino / ATtiny

| Item | Qty | Price |
|------|-----|-------|
| ELEGOO UNO R3 Super Starter Kit | 1 | $35.99 |
| ELEGOO UNO R3 Most Complete Starter Kit (200+ components) | 1 | $59.99 |
| ATTINY88 Micro Dev Board (16MHz) | 6 (2x 3-pack) | $9.99 x2 |

### RISC-V

| Item | Qty | Price |
|------|-----|-------|
| Sipeed Maix M1s Dock (RISC-V, 100GOPS NPU, touch screen) | 1 | $35.99 |
| WCH Linke CH32V003 EVT (RISC-V debugger, SWD+serial) | 1 | $14.11 |

### Other MCUs

| Item | Qty | Price |
|------|-----|-------|
| M5Stack Atom Lite (ESP32, tiny) | 4 (2x 2-pack) | $14.90 x2 |
| Heltec WiFi LoRa 32 (ESP32-S3, SX1262, OLED, 3000mAh, Meshtastic) | 1 | $45 |

## Sensors

| Sensor | Type | Qty | Interface | Price |
|--------|------|-----|-----------|-------|
| DHT22/AM2302 | Temperature + humidity | 1+ | Digital | included |
| LD2410C (HLK-LD2410) | 24GHz mmWave human presence radar | 2 | Serial/IO | $11.99 x2 |
| RCWL-0516 | Microwave doppler radar motion | 2 | Digital | $11.99 |
| SparkFun AS7262 | 6-channel visible spectral (Qwiic) | 1 | I2C | $28.50 |
| SparkFun VL53L5CX | 8x8 ToF imager, 63° FoV (Qwiic) | 2 | I2C | $32.50 x2 |
| GY-NEO6MV2 | GPS module (3-5V, ceramic antenna) | 4 (2x 2-pack) | UART | $12.59 x2 |
| Photodiode sensor module (5mm) | Light/brightness detection | 10 | Digital/Analog | $9.98 |
| LDR Photoresistor (LM393, 5516) | Light detection | 24 (2x 12-pack) | Digital+Analog | $8.99 x2 |
| Raspberry Pi Camera Module V2 | 8MP 1080p | 1 | CSI | $13.99 |

## Audio

| Item | Qty | Interface | Price |
|------|-----|-----------|-------|
| Walfront Bone Conduction Speaker 26mm (8ohm) | 2 | Wired | $11.05 x2 |
| Dayton Audio BCE-1 Bone Conducting Exciter (22x14mm) | 1 | Wired | $24.14 |
| INMP441 Omnidirectional MEMS Microphone | 3 | I2S | $9.99 |
| MAX98357 I2S DAC Amplifier (3W Class D) | 2 | I2S | $6.88 |
| Mini Vibration Motors (10mm x 3mm, 3V) | 20 | DC | $12.99 |
| Logitech H390 USB Headset (noise-canceling) | 1 | USB | $28.84 |
| Aeroband Drumsticks (USB MIDI, Kalezo 2485:4330) | 1 pair | USB-C MIDI | — |

## Wireless / Mesh Communication

| Item | Qty | Protocol | Price |
|------|-----|----------|-------|
| NRF24L01+ Transceiver (2.4GHz) | 8 (4+4) | SPI, 2.4GHz | $7.89 + $8.87 |
| RYLR998 LoRa Module (868/915MHz, FCC/CE certified) | 1 | UART, LoRa | $12.60 |
| Heltec WiFi LoRa 32 (ESP32-S3, SX1262, Meshtastic) | 1 | WiFi+BT+LoRa | $45 |
| RS485 CAN HAT for Pi (MCP2515, SIT65HVD230DR) | 2 | SPI, RS485/CAN | $16.31 |
| TTL to RS485 converter (auto flow control) | 5 | UART | $7.39 |
| Si5351A Clock Generator (8KHz-160MHz, 3-channel) | 2 | I2C | $12.95 x2 |

## Displays

| Item | Qty | Resolution | Interface | Price |
|------|-----|-----------|-----------|-------|
| ROADOM 10.1" Touchscreen (IPS, speakers) | 2 | 1024x600 | HDMI | $84.99 x2 |
| Waveshare 9.3" Capacitive Touch | 1 | 1600x600 | HDMI | $119.99 |
| Waveshare 7" Capacitive Touch | 1 | 1024x600 | HDMI | $47.99 |
| Waveshare 4" Capacitive Touch (square) | 1 | 720x720 | HDMI | $75 |
| ELEGOO 2.8" TFT Touch (UNO R3) | 1 | 320x240 | SPI | $15.99 |
| ELEGOO 0.96" OLED (SSD1306, I2C) | 3 | 128x64 | I2C | $9.99 |
| ESP32 2.8" Touchscreen (ILI9341) | 4 | 240x320 | SPI | $19.98 ea |
| HDMI Dummy Plug 4K (headless display) | 6 (2x 3-pack) | 4K@60Hz | HDMI | — |

## Networking

| Item | Qty | Price |
|------|-----|-------|
| TP-Link TL-SG105 5-Port Gigabit Switch | 1 | ~$16 |
| TP-Link AX3000 PCIe WiFi Card (WiFi 6, BT 5.3) | 1 | $31.99 |
| eero Mesh Router (Amazon) | 1+ | — |

## Power

| Item | Qty | Price |
|------|-----|-------|
| Geekworm PD 27W USB-C PSU (5.1V 5A, for Pi 5) | 1 | ~$15 |
| 5V 4A AC-DC Power Supply (5.5x2.5mm barrel) | 2 | $11.69 + $9.99 |
| Anker 10000mAh 30W Power Bank (USB-C) | 2 | $25.99 x2 |
| 18650 Battery Charger Module + Holder | 5+5 | $7.99 |
| 18650 Battery Holder (single slot) | 15 | $5.99 |
| 3.7V 1000mAh LiPo (803040, JST) | 1+ | $7.89 |

## HDMI / Video / Adapters

| Item | Qty | Price |
|------|-----|-------|
| UGREEN HDMI Switch 5-in-1 (4K@60Hz, remote) | 1 | $29.99 |
| WARRKY USB-C to HDMI Cable 4K60 (6ft) | 2 | $27 total |
| JSAUX Micro HDMI to HDMI Adapter | 1 | $8.99 |
| 8K Right Angle Micro HDMI Coiled Cable | 1 | $16.99 |
| Anker USB-C Hub 7-in-1 (HDMI, USB-A x2, SD, 100W PD) | 1 | $25 |
| TobenONE USB-C Dock 15-in-1 (Dual HDMI, VGA, 65W) | 1 | $129.99 |
| WAVLINK USB-C to Dual HDMI Splitter | 1 | $45.86 |
| Dell WD19S Performance Dock (130W) | 1 | $209.96 |
| Alxum External CD/DVD Drive (7-in-1) | 1 | $43.62 |
| Anker USB 3.0 SD Card Reader | 1 | $9.49 |
| Apple USB-C to SD Card Reader | 1 | $45 |

## Optical Media

| Item | Qty | Price |
|------|-----|-------|
| Optical Quantum DVD+R DL 8.5GB (50-disc) | 1 | $34.95 |
| Verbatim DVD-R UltraLife Gold Archival (5-pack) | 1 | $16.50 |

## Soldering & Tools

| Item | Price |
|------|-------|
| 60W Soldering Iron Kit (12-in-1, ceramic heater, 200-450C) | $25.99 |
| KOTTO Helping Hands (4-arm, weighted base) | $23.99 |
| SainSmart Magnetic Helping Hands (5X LED magnifier, 4 PCB holders) | $54.99 |
| Silicone Soldering Mat (17.7"x11.8", anti-static, magnetic) | $12.99 |
| KOTTO Solder Smoke Absorber/Fume Extractor | $39.99 |
| Gikfun SMD/SMT Practice Board | $7.99 |
| YHYZ Precision Tweezers Set (7pcs, ESD anti-static) | $6.49 |
| Glass Cutter (2-20mm, oil feed carbide) | $9.99 |
| JB Weld Clear RTV Silicone (3oz, 2-pack) | $11.98 |
| Freenove Ultimate Starter Kit (962pp tutorial, 223 items, 128 projects) | $49.95 |

## Physical / Display

| Item | Qty | Price |
|------|-----|-------|
| Plymor 6" Square Beveled Glass Mirror | 5 | $11.88 |
| 4" Square Glass Mirror Tiles | 50 | $21.38 |
| 4x4" Square Mirror Tiles (Suwimut) | 50 | $17.99 |
| LED Light Base (multicolor, round) | 1 | $12.58 |
| LED Light Base (multicolor, square, flat) | 1 | $9.46 |
| Bamboo Sticks (15.7" x 0.35") | 100 | $12.69 |
| Clisela Acrylic Cube Display Stands (3"/4"/5") | 1 set | $19.99 |
| Akro-Mils 16-Drawer Storage Cabinet | 1 | $19.99 |
| Breaker Panel Labels (10 sheets) | 1 | $6.99 |
| BTF-LIGHTING WS2812B LED Strip (16.4ft, 300 LED, 5V) | 1 | $27.99 |

## Logic / Interface

| Item | Qty | Price |
|------|-----|-------|
| I2C Logic Level Converter (3.3V-5V, 4-channel) | 10 | $7.49 |
| 2-Channel 12V Relay Module | 2 | $8.59 |
| Breadboard Jumper Wires (840pcs, 2-125mm) | 1 set | $13.99 |

## Misc / Decorative

| Item | Notes |
|------|-------|
| Maclock WB-8 (retro Mac alarm clock, WonderBoy Innovation) | USB-C charging only, no data |
| Mostarle Terminator M | Unknown — needs identification |
| Apple Magic Mouse | $79.99 |
| Apple Magic Keyboard | $98.50 |

## Total Estimated Hardware Investment

~$3,500-$4,000 (excluding legacy Mac/iPad)
