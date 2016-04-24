sudo apt-get-install update
sudo apt-get install nginx vim git make

# install ruby
wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
tar -xzvf ruby-install-0.6.0.tar.gz
cd ruby-install-0.6.0/
sudo make install
ruby-install ruby 2.3.0

# Install chruby
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
echo "source /usr/local/share/chruby/chruby.sh" > ~/.bashrc
source ~/.bashrc

# Setup blog
mkdir ~/apps
cd ~/apps
git clone https://github.com/austenito/austenito.com
cd austenito.com

chruby 2.3.0
gem install bundler
gem install --no-document jekyll
gem install --no-document duktape
jekyll build
