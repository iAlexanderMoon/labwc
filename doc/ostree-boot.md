# OSTREE BOOT 


* https://universal-blue.discourse.group/t/cant-boot-stuck-at-grub-command-line/7235/2
* https://discussion.fedoraproject.org/t/cant-get-past-grub-and-dracut-shells-after-ostree-upgrade/136567/6

* lsblk to see what's mounted
* check out your disks with cfdisk, fdisk, disks in gnome

```
mkdir /x
mount /dev/sda3 /x/
mount /dev/sda2 /x/root/boot/
mount /dev/sda1 /x/root/boot/efi
mount --bind /dev /x/root/dev
mount --bind /proc /x/root/proc
mount --bind /sys /x/root/sys
```

# Finde the ostree to deploy
#deploy="/ostree/boot.1/default/c638c18f507947f25d5a11f5a8c64960684f04c9d0c059d5ed02a679983937b7/0"
# ls /mnt/root/ostree/
  * boot.0 boot.0.1
  * not sure what this is about... going with boot.0
# ls /mnt/root/ostree/boot.0/default
  * 0ef2897002e60ddafc2721b65825c1bebdeea77950e03299ac7fd762d018386f
  * 67c68236c7f5dc709269e25bfb756721b1682957ad18f97586b0e565de6f8eea
  * 2ba68a2479c97f74b6edcbbaf755d01f811b058e1b41358b08e91de806088168
  * 6d6869422d4e9ecc1bd230fc706fd572bf4e8aa12311edb1478c1d64a2260a60
* try the first one I guess... I think that's a guid for each installed but I don't know which is which
* hopefully it just fixed the issue anyway

```
deploy=="/ostree/boot.0/default/0ef2897002e60ddafc2721b65825c1bebdeea77950e03299ac7fd762d018386f/0"
```

```
mkdir /x/root/usr 
mkdir /x/root/etc
mkdir /x/root/bin
mkdir /x/root/sbin
mkdir /x/root/lib
mkdir /x/root/lib64
```

```
mount --bind $deploy/usr /mnt/root/usr
mount --bind $deploy/etc /mnt/root/etc
mount --bind $deploy/bin /mnt/root/bin
mount --bind $deploy/sbin /mnt/root/sbin
mount --bind $deploy/lib /mnt/root/lib
mount --bind $deploy/lib64 /mnt/root/lib64
chroot /x/
```
