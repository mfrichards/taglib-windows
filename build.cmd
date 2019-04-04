rem MDM Taglib Build Script - originally posted here:
rem MDM 	https://thedigitalmachine.com:444/wiki/Build_the_TagLib_library_with_Visual_Studio_2010
rem MDM
rem MDM Based on a build script posted here:
rem MDM 	http://old.nabble.com/Cannot-compile-Taglib-for-x86-with-MSVC2010-td34048318.html#a34048899
rem MDM
rem MDM It pretty much does what we need out of the box.
rem MDM I fixed the tagd.lib copy line (it was using tag.lib before), that's about it.
rem MDM I am using the following tools and source files:
rem MDM
rem MDM		CMake 2.8		
rem MDM		zlib 1.27 source
rem MDM		taglib 1.7.2 source
rem MDM
rem MDM Set things up here (don't try converting to deeper paths, they will fail):
rem MDM
rem MDM		c:\taglib\taglib
rem MDM		c:\taglib\zlib
rem MDM		c:\taglib\build.cmd (this file)
rem MDM

set ProgFilesRoot=%ProgramFiles%
set ProgFiles86Root=%ProgramFiles(x86)%
if not "%ProgFiles86Root%"=="" GOTO 64bitWindows
set ProgFiles86Root=%ProgramFiles%
:64bitWindows

set 64bitcl=true

if not exist "%ProgFiles86Root%\Microsoft Visual Studio 10.0\VC\bin\amd64\cl.exe" goto 32bitcl
set 64bitcl=false
:32bitcl


rem ######## zlib
cd zlib\

rem #Release x86
del ".\CMakeCache.txt"
call "%ProgFilesRoot%\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /Release /x86 /win7
call "%ProgFiles86Root%\Microsoft Visual Studio 10.0\VC\bin\vcvars32.bat"
"%ProgFiles86Root%\CMake 2.8\bin\cmake" -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF .
nmake clean
nmake
mkdir .\Release\x86
move /Y zlib.lib .\Release\x86\zlib.lib
mkdir ..\Release\x86
move /Y zlib.dll ..\Release\x86\zlib.dll

pause

if "64bitcl"=="false" goto taglibrelease

rem #Release x64
del ".\CMakeCache.txt"
call "%ProgFilesRoot%\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /Release /x64 /win7
call "%ProgFiles86Root%\Microsoft Visual Studio 10.0\VC\bin\x86_amd64\vcvarsx86_amd64.bat"
"%ProgFiles86Root%\CMake 2.8\bin\cmake" -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF .
nmake clean
nmake
mkdir .\Release\x64
move /Y zlib.lib .\Release\x64\zlib.lib
mkdir ..\Release\x64
move /Y zlib.dll ..\Release\x64\zlib.dll

cd ..\

pause


:taglibrelease

rem ######## Taglib
cd taglib\

rem #Release x86
del ".\CMakeCache.txt"
call "%ProgFilesRoot%\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /Release /x86 /win7
call "%ProgFiles86Root%\Microsoft Visual Studio 10.0\VC\bin\vcvars32.bat"
"%ProgFiles86Root%\CMake 2.8\bin\cmake" -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DZLIB_INCLUDE_DIR=..\zlib\ -DZLIB_LIBRARY=..\zlib\Release\x86\zlib.lib -DENABLE_STATIC=1 -DWITH_MP4=1 -DWITH_ASF=1 .
nmake clean
nmake
mkdir .\taglib\Release\x86
move /Y .\taglib\tag.lib .\taglib\Release\x86\tag.lib
mkdir ..\Release\x86
move /Y .\bindings\c\tag_c.dll ..\Release\x86\tag_c.dll
move /Y .\bindings\c\tag_c.lib ..\Release\x86\tag_c.lib

pause

if "64bitcl"=="false" goto taglibdebug

rem #Release x64
del ".\CMakeCache.txt"
call "%ProgFilesRoot%\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /Release /x64 /win7
call "%ProgFiles86Root%\Microsoft Visual Studio 10.0\VC\bin\x86_amd64\vcvarsx86_amd64.bat"
"%ProgFiles86Root%\CMake 2.8\bin\cmake" -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DZLIB_INCLUDE_DIR=..\zlib\ -DZLIB_LIBRARY=..\zlib\Release\x64\zlib.lib -DENABLE_STATIC=1 -DWITH_MP4=1 -DWITH_ASF=1 .
nmake clean
nmake

mkdir .\taglib\Release\x64
move /Y .\taglib\tag.lib .\taglib\Release\x64\tag.lib
mkdir ..\Release\x64
move /Y .\bindings\c\tag_c.dll ..\Release\x64\tag_c.dll
move /Y .\bindings\c\tag_c.lib ..\Release\x64\tag_c.lib

cd ..\

pause
