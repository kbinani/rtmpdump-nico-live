all:
	cd ext\openssl && perl Configure VC-WIN32
	cd ext\openssl && ms\do_ms
	cd ext\openssl && $(MAKE) -f ms\nt.mak
	msbuild build\msvs\rtmpdump.vcxproj /p:Configuration=Release

clean:
	cd ext\openssl && $(MAKE) -f ms\nt.mak vclean
	msbuild build\msvs\rtmpdump.vcxproj /p:Configuration=Release /target:Clean
