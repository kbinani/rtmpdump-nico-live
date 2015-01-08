all:
	msbuild build\msvs\rtmpdump.sln /p:Configuration=Release

clean:
	msbuild build\msvs\rtmpdump.sln /p:Configuration=Release /target:Clean
