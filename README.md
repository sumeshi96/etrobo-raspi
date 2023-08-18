# 使い方

## サンプルコードを動かす
- rootfsをDL
```wget https://downloads.raspberrypi.org/raspios_lite_armhf/root.tar.xz```

- docker build
```docker build --platform linux/arm32v6 -t raspios:latest .```

- docker run
```docker run --platform linux/arm32v6 --rm -it  raspios:latest```
