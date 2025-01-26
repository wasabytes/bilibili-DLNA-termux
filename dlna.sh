#bin/bash
echo "请输入哔哩哔哩Av号"
read bav
echo "请输入中转服务器地址"
read bnet
echo "请输入中转服务器密码"
read bpasswd
./dlnaexp.sh $bnet $bav $bpasswd
dlna device
echo "输入dlna投屏端详细地址"
read btv
dlna play -d $btv http://$bnet:8000/bilibili.flv
