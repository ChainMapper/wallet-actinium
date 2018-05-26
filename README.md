# docker-actinium
Wallet and daemon for Actinium [ACM] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/actinium` and see the wallet starting.

```
Docker Actinium wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
ACM: NUCJTR11bPHL9goH7JoTgiy8qSGox1s9q6

Starting ACM daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/Actinium.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

ACM: NUCJTR11bPHL9goH7JoTgiy8qSGox1s9q6

# License
MIT, see LICENSE file