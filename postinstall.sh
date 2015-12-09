\wget -O - http://install.perlbrew.pl | bash
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.bash_profile
source ~/.bash_profile

perlbrew install perl-5.16.3
perlbrew switch perl-5.16.3

curl -L https://cpanmin.us | perl - App::cpanminus

curl http://duckpan.org/install.pl | perl

# Shouldn't need to do this:
# duckpan upgrade
# cpanm -U DDG
# duckpan DDG
