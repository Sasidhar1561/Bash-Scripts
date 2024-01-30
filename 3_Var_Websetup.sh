uptime

PACKAGE='zip wget httpd unzip'
TMPDIR='/tmp/websetup/'
URL='https://www.tooplate.com/zip-templates/2079_garage.zip'
ARTIFACT='2079_garage'

sudo yum install $PACKAGE -y

systemctl start httpd
systemctl enbale httpd

sudo mkdir -p $TMPDIR

cd $TMPDIR
wget $URL > /dev/null
unzip $ARTIFACT.zip > /dev/null
sudo cp -r $ARTIFACT/* /var/www/html/

sudo rm -rf $TMPDIR

sudo systemctl restart httpd
