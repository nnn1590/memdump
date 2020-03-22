all:
	ndk-build

clean:
	ndk-build clean
	rm -r libs obj
