version=$1
if [[ -z $version ]]; then
    echo 'Version required';
    exit 1;
fi
echo "Build $version"

cd ~
curl https://github.com/paritytech/parity/archive/v$version.tar.gz -L -o source.tar.gz
tar -xf source.tar.gz --strip-components=1
cargo build --release
cd -
cp ~/target/release/parity ./
