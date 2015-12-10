export DEBIAN_FRONTEND=noninteractive

echo "# Installing perlbrew"
\wget -O - http://install.perlbrew.pl | bash
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.bash_profile
source ~/.bash_profile

echo "# Installing perl"
perlbrew install perl-5.16.3
perlbrew switch perl-5.16.3

echo "# Installing cpan"
curl -L https://cpanmin.us | perl - App::cpanminus

echo "# Installing duckpan"
curl http://duckpan.org/install.pl | perl

# Shouldn't need to do this:
# duckpan upgrade
# cpanm -U DDG
# duckpan DDG
