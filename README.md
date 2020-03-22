# memdump

Original from: https://security.stackexchange.com/a/109068 and https://security.stackexchange.com/questions/62300/memory-dumping-android/109068#comment275355_109068

## Usage

```sh
memdump <pid>
memdump <pid> <ip-address> <port>
```

## Build

1. Install Android NDK
2. Run `ndk-build`
3. If the build succeeds, the next executable will be generated: `libs/<architecture>/memdump`

## Install and Run

1. [Build this project](#Build)
2. Run `adb [-s device] push libs/<architecture>/memdump /data/local/tmp`
3. Run `adb [-s device] shell`
4. Run `chmod +x /data/local/tmp/memdump`
5. Run `/data/local/tmp/memdump <pid> [<ip-address> <port>]`
6. If it fails, retry as root: `su -c "/data/local/tmp/memdump <pid> [<ip-address> <port>]"`
