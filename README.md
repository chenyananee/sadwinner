# sadwinner

## arch
```
./
├── LICENSE
├── README.md
├── app
│   ├── Android
│   ├── cloud
│   ├── pc
│   └── wechat
├── doc
│   └── esp32
├── fw
│   └── esp32
└── hw
    └── PCB_Project_SadWinner
        ├── PCB_Project_SadWinner.PrjPcb
        ├── PCB_Project_SadWinner.PrjPcbStructure
        ├── esp32.SchDoc
        └── sadwinner.PcbDoc

```

## Build ESP-FW and run

1. install the esp-idf(version 4.3)

2. cd sadwinner/fw/esp32

3. 
```
./build-esp32.sh    **(-p /dev/ttyS3) replace with your port
```

4. 
```
./run-esp32.sh      **(-p /dev/ttyS3) replace with your port
```

