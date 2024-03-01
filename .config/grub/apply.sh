#!/bin/sh
echo "The grub file will be copied to the /etc/default folder."
sudo cp ./grub /etc/default/grub && echo "Grub will be updated!" && \
sudo update-grub && echo "Process finished successfully!"
