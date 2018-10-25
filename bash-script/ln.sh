# installation for pre-compiled package whose bin should be in ./bin
# copy this file to the root of extracted package's root direcotry
# dont use this for node installation, because in case of npm -g <package>, package's global cli will not be available
for i in $(ls bin)
do
	echo ln -s $(pwd)/bin/$i /usr/local/bin/$i #$1 from $2 to
done
