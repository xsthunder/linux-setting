# installation for pre-compiled package whose bin should be in ./bin
# copy this file to the root of extracted package's root direcotry
for i in $(ls bin)
do
	echo ln -s $(pwd)/bin/$i /usr/local/bin/$i
done
