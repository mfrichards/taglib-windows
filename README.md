# Building TagLib 1.7 for MyTunes Server:

These instructions explain how to build TagLib for use in the MyTunes Server application
on Windows (32 and 64 bit). TagLib uses the CMake build system. These instructions use
CMake 2.8, Visual Studio 2010, and the Microsoft Windows SDK 7.1. You should be able to
build it with other versions of these tools, but you will have to modify the build script
to use the appropriate paths and tool names.

These instructions are based on the information found here:
https://thedigitalmachine.com:444/wiki/Build_the_TagLib_library_with_Visual_Studio_2010
http://old.nabble.com/Cannot-compile-Taglib-for-x86-with-MSVC2010-td34048318.html#a34048899

1) Make sure you have the following installed on your PC:

   Visual Studio 2010 (http://msdn.microsoft.com/en-us/library/dd831853(v=vs.100).aspx)
   Microsoft Windows SDK 7.1 (http://www.microsoft.com/en-us/download/details.aspx?id=8279)
   CMake 2.8 (http://www.cmake.org/cmake/resources/software.html)

2) Unzip this package to the following location:

   C:\taglib

   This will create the following directory structure:
   
   C:\taglib
   C:\taglib\taglib
   C:\taglib\zlib

   If you wish to use a different version of taglib, you should copy it under:

   C:\taglib\taglib

   If you wish to use a different version of zlib, you should copy it under:

   C:\taglib\zlib

3) Execute the C:\taglib\build.cmd script. This will build the following libraries:
   
   C:\taglib\Release\x64\tag_c.dll
   C:\taglib\Release\x64\zlib.dll
   C:\taglib\Release\x86\tag_c.dll
   C:\taglib\Release\x86\zlib.dll

To use the new libraries in MyTunes Server, copy tag_c.dll and zlib.dll to the "lib"
sub-directory where MyTunes Server is installed. For example:

C:\Program Files\MyTunes Server\lib\x86 (32-bit)
C:\Program Files\MyTunes Server\lib\x64 (64-bit)

Restart MyTunes Server and the app will now be using the new libraries.

