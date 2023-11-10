# Execution Engine x64 Environment

```
docker build -t aixpand/exe_eng_pub:x64_env_v2 .
docker push aixpand/exe_eng_pub:x64_env_v2
```

# Execution Engine Tegra Environment

```
docker build -f ./Dockerfile_tegra -t aixpand/exe_eng_pub:aarch64_env_tegra .
docker push aixpand/exe_eng_pub:aarch64_env_tegra
```

# Execution Engine Raspberry PI Environment
```
docker build -f ./raspberry/Dockerfile -t aixpand/exe_eng_pub:aarch64-rpi
docker push aixpand/exe_eng_pub:aarch64-rpi
```
