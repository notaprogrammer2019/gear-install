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
    
   4. [Telemetry](https://telemetry.gear-tech.io/). Example: 
![image](https://user-images.githubusercontent.com/47750617/158787589-be2b293a-4b14-4187-9194-6ce54af6725d.png)
