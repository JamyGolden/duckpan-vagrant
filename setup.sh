export DEBIAN_FRONTEND=noninteractive

echo "# Update Ubuntu repo"
apt-get update

echo "# Install Ubuntu packages"
apt-get -q -y install build-essential autoconf libssl-dev git git-core curl
