# gear-install

Official [github](https://github.com/gear-tech) and official [install node](https://wiki.gear-tech.io/node/setting-up)

# Gear node install

   1. "no brain" install:
   
    . <(wget -qO- https://raw.githubusercontent.com/notaprogrammer2019/gear-install/main/gear-node-install.sh)
    
   2. Rename your node here:
   
    nano /etc/systemd/system/gear-node.serive
    ..
    --name CHOOSEYOURNAME 
    ..     
   3. Logs: 
   
    journalctl -u gear-node -f
