@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  gradle_plugins startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_PLUGINS_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\gradle_plugins-0.4.1.jar;%APP_HOME%\lib\gradle-7.2.0.jar;%APP_HOME%\lib\rosmobile_build_tools-0.4.1.jar;%APP_HOME%\lib\lint-model-30.2.0.jar;%APP_HOME%\lib\builder-7.2.0.jar;%APP_HOME%\lib\manifest-merger-30.2.0.jar;%APP_HOME%\lib\sdk-common-30.2.0.jar;%APP_HOME%\lib\sdklib-30.2.0.jar;%APP_HOME%\lib\repository-30.2.0.jar;%APP_HOME%\lib\gradle-api-7.2.0.jar;%APP_HOME%\lib\builder-test-api-7.2.0.jar;%APP_HOME%\lib\ddmlib-30.2.0.jar;%APP_HOME%\lib\aaptcompiler-7.2.0.jar;%APP_HOME%\lib\bundletool-1.8.2.jar;%APP_HOME%\lib\aapt2-proto-7.2.0-7984345.jar;%APP_HOME%\lib\crash-30.2.0.jar;%APP_HOME%\lib\tracker-30.2.0.jar;%APP_HOME%\lib\shared-30.2.0.jar;%APP_HOME%\lib\lint-typedef-remover-30.2.0.jar;%APP_HOME%\lib\databinding-compiler-common-7.2.0.jar;%APP_HOME%\lib\databinding-common-7.2.0.jar;%APP_HOME%\lib\baseLibrary-7.2.0.jar;%APP_HOME%\lib\layoutlib-api-30.2.0.jar;%APP_HOME%\lib\android-device-provider-ddmlib-proto-30.2.0.jar;%APP_HOME%\lib\android-device-provider-gradle-proto-30.2.0.jar;%APP_HOME%\lib\android-test-plugin-host-additional-test-output-proto-30.2.0.jar;%APP_HOME%\lib\android-test-plugin-host-coverage-proto-30.2.0.jar;%APP_HOME%\lib\android-test-plugin-host-retention-proto-30.2.0.jar;%APP_HOME%\lib\android-test-plugin-result-listener-gradle-proto-30.2.0.jar;%APP_HOME%\lib\dokka-core-1.4.32.jar;%APP_HOME%\lib\builder-model-7.2.0.jar;%APP_HOME%\lib\dvlib-30.2.0.jar;%APP_HOME%\lib\common-30.2.0.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.5.31.jar;%APP_HOME%\lib\transform-api-2.0.0-deprecated-use-gradle-api.jar;%APP_HOME%\lib\httpmime-4.5.6.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\jetifier-processor-1.0.0-beta09.jar;%APP_HOME%\lib\asm-commons-9.1.jar;%APP_HOME%\lib\asm-util-9.1.jar;%APP_HOME%\lib\asm-analysis-9.1.jar;%APP_HOME%\lib\asm-tree-9.1.jar;%APP_HOME%\lib\asm-9.1.jar;%APP_HOME%\lib\apkzlib-7.2.0.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.56.jar;%APP_HOME%\lib\jaxb-runtime-2.3.2.jar;%APP_HOME%\lib\jopt-simple-4.9.jar;%APP_HOME%\lib\jetifier-core-1.0.0-beta09.jar;%APP_HOME%\lib\javapoet-1.10.0.jar;%APP_HOME%\lib\protobuf-java-util-3.10.0.jar;%APP_HOME%\lib\grpc-protobuf-1.21.1.jar;%APP_HOME%\lib\tink-1.3.0-rc2.jar;%APP_HOME%\lib\protos-30.2.0.jar;%APP_HOME%\lib\protobuf-java-3.10.0.jar;%APP_HOME%\lib\grpc-netty-1.21.1.jar;%APP_HOME%\lib\grpc-core-1.21.1.jar;%APP_HOME%\lib\gson-2.8.6.jar;%APP_HOME%\lib\grpc-stub-1.21.1.jar;%APP_HOME%\lib\core-proto-0.0.8-alpha07.jar;%APP_HOME%\lib\tensorflow-lite-metadata-0.1.0-rc2.jar;%APP_HOME%\lib\flatbuffers-java-1.12.0.jar;%APP_HOME%\lib\jimfs-1.1.jar;%APP_HOME%\lib\grpc-protobuf-lite-1.21.1.jar;%APP_HOME%\lib\grpc-api-1.21.1.jar;%APP_HOME%\lib\guava-30.1-jre.jar;%APP_HOME%\lib\dagger-2.28.3.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\kxml2-2.3.0.jar;%APP_HOME%\lib\bcprov-jdk15on-1.56.jar;%APP_HOME%\lib\trove4j-1.0.20181211.jar;%APP_HOME%\lib\jackson-module-kotlin-2.11.1.jar;%APP_HOME%\lib\kotlin-reflect-1.5.31.jar;%APP_HOME%\lib\xercesImpl-2.12.0.jar;%APP_HOME%\lib\commons-compress-1.20.jar;%APP_HOME%\lib\httpclient-4.5.9.jar;%APP_HOME%\lib\httpcore-4.4.11.jar;%APP_HOME%\lib\javax.activation-1.2.0.jar;%APP_HOME%\lib\signflinger-7.2.0.jar;%APP_HOME%\lib\zipflinger-7.2.0.jar;%APP_HOME%\lib\annotations-30.2.0.jar;%APP_HOME%\lib\jna-platform-5.6.0.jar;%APP_HOME%\lib\juniversalchardet-1.0.3.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.5.31.jar;%APP_HOME%\lib\kotlinx-coroutines-core-jvm-1.4.1.jar;%APP_HOME%\lib\markdown-jvm-0.2.1.jar;%APP_HOME%\lib\kotlin-stdlib-1.5.31.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\stax-ex-1.8.1.jar;%APP_HOME%\lib\jackson-dataformat-xml-2.11.1.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.11.1.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.2.jar;%APP_HOME%\lib\txw2-2.3.2.jar;%APP_HOME%\lib\istack-commons-runtime-3.0.8.jar;%APP_HOME%\lib\FastInfoset-1.2.16.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.1.jar;%APP_HOME%\lib\auto-value-annotations-1.6.2.jar;%APP_HOME%\lib\error_prone_annotations-2.3.4.jar;%APP_HOME%\lib\jose4j-0.7.0.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\jdom2-2.0.6.jar;%APP_HOME%\lib\opencensus-contrib-grpc-metrics-0.21.0.jar;%APP_HOME%\lib\opencensus-api-0.21.0.jar;%APP_HOME%\lib\annotations-4.1.1.4.jar;%APP_HOME%\lib\netty-codec-http2-4.1.34.Final.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.34.Final.jar;%APP_HOME%\lib\proto-google-common-protos-1.12.0.jar;%APP_HOME%\lib\json-20180813.jar;%APP_HOME%\lib\jsoup-1.13.1.jar;%APP_HOME%\lib\checker-qual-3.5.0.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\fastutil-8.4.0.jar;%APP_HOME%\lib\json-simple-1.1.jar;%APP_HOME%\lib\apksig-7.2.0.jar;%APP_HOME%\lib\javawriter-2.5.0.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\jna-5.6.0.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.5.31.jar;%APP_HOME%\lib\grpc-context-1.21.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.17.jar;%APP_HOME%\lib\netty-codec-http-4.1.34.Final.jar;%APP_HOME%\lib\netty-handler-4.1.34.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.34.Final.jar;%APP_HOME%\lib\netty-codec-4.1.34.Final.jar;%APP_HOME%\lib\netty-transport-4.1.34.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.34.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.34.Final.jar;%APP_HOME%\lib\netty-common-4.1.34.Final.jar;%APP_HOME%\lib\jackson-databind-2.11.1.jar;%APP_HOME%\lib\jackson-annotations-2.11.1.jar;%APP_HOME%\lib\jackson-core-2.11.1.jar;%APP_HOME%\lib\woodstox-core-6.2.1.jar;%APP_HOME%\lib\stax2-api-4.2.1.jar


@rem Execute gradle_plugins
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_PLUGINS_OPTS%  -classpath "%CLASSPATH%"  %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GRADLE_PLUGINS_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GRADLE_PLUGINS_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
