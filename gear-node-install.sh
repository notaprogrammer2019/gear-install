#!/bin/bash

apt install git clang curl libssl-dev llvm libudev-dev -y && curl https://sh.rustup.rs -sSf | sh && source ~/.cargo/env && rustup default stable && rustup update && rustup update nightly && rustup target add wasm32-unknown-unknown --toolchain nightly && wget https://builds.gear.rs/gear-nightly-linux-x86_64.tar.xz && tar xvf gear-nightly-linux-x86_64.tar.xz && rm gear-nightly-linux-x86_64.tar.xz && chmod +x $HOME/gear-node && printf "[Unit] 
Description=Gear Node 
After=network.target 

[Service] 
Type=simple 
User=root 
WorkingDirectory=/root/ 
ExecStart=/root/gear-node \
    --telemetry-url 'ws://telemetry-backend-shard.gear-tech.io:32001/submit 0' \
    --name $CHOOSEYOURNAME \
    --execution wasm \
    --log runtime
Restart=always 
RestartSec=3 
LimitNOFILE=10000
 
[Install] 
WantedBy=multi-user.target" > /etc/systemd/system/gear-node.service && systemctl daemon-reload && systemctl enable gear-node && systemctl restart gear-node
