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

set CLASSPATH=%APP_HOME%\lib\gradle_plugins-0.4.0.jar;%APP_HOME%\lib\gradle-2.3.0.jar;%APP_HOME%\lib\rosjava_build_tools-0.4.0.jar;%APP_HOME%\lib\gradle-core-2.3.0.jar;%APP_HOME%\lib\builder-2.3.0.jar;%APP_HOME%\lib\lint-25.3.0.jar;%APP_HOME%\lib\transform-api-2.0.0-deprecated-use-gradle-api.jar;%APP_HOME%\lib\gradle-api-2.3.0.jar;%APP_HOME%\lib\compilerCommon-2.3.0.jar;%APP_HOME%\lib\asm-commons-5.0.4.jar;%APP_HOME%\lib\lint-checks-25.3.0.jar;%APP_HOME%\lib\lint-api-25.3.0.jar;%APP_HOME%\lib\asm-analysis-5.0.4.jar;%APP_HOME%\lib\asm-tree-5.0.4.jar;%APP_HOME%\lib\asm-5.0.4.jar;%APP_HOME%\lib\proguard-gradle-5.3.2.jar;%APP_HOME%\lib\org.jacoco.report-0.7.5.201505241946.jar;%APP_HOME%\lib\org.jacoco.core-0.7.5.201505241946.jar;%APP_HOME%\lib\jopt-simple-4.9.jar;%APP_HOME%\lib\tracker-25.3.0.jar;%APP_HOME%\lib\shared-25.3.0.jar;%APP_HOME%\lib\protos-25.3.0.jar;%APP_HOME%\lib\protobuf-java-3.0.0.jar;%APP_HOME%\lib\antlr-3.5.2.jar;%APP_HOME%\lib\manifest-merger-25.3.0.jar;%APP_HOME%\lib\sdk-common-25.3.0.jar;%APP_HOME%\lib\builder-model-2.3.0.jar;%APP_HOME%\lib\builder-test-api-2.3.0.jar;%APP_HOME%\lib\sdklib-25.3.0.jar;%APP_HOME%\lib\ddmlib-25.3.0.jar;%APP_HOME%\lib\layoutlib-api-25.3.0.jar;%APP_HOME%\lib\dvlib-25.3.0.jar;%APP_HOME%\lib\repository-25.3.0.jar;%APP_HOME%\lib\common-25.3.0.jar;%APP_HOME%\lib\jack-api-0.13.0.jar;%APP_HOME%\lib\jill-api-0.10.0.jar;%APP_HOME%\lib\javawriter-2.5.0.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.48.jar;%APP_HOME%\lib\bcprov-jdk15on-1.48.jar;%APP_HOME%\lib\ecj-4.6.1.jar;%APP_HOME%\lib\jimfs-1.1.jar;%APP_HOME%\lib\lombok-ast-0.2.3.jar;%APP_HOME%\lib\guava-18.0.jar;%APP_HOME%\lib\baseLibrary-2.3.0.jar;%APP_HOME%\lib\antlr4-4.5.3.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\juniversalchardet-1.0.3.jar;%APP_HOME%\lib\annotations-25.3.0.jar;%APP_HOME%\lib\proguard-base-5.3.2.jar;%APP_HOME%\lib\asm-debug-all-5.0.1.jar;%APP_HOME%\lib\ST4-4.0.8.jar;%APP_HOME%\lib\antlr-runtime-3.5.2.jar;%APP_HOME%\lib\gson-2.2.4.jar;%APP_HOME%\lib\commons-compress-1.8.1.jar;%APP_HOME%\lib\httpclient-4.1.1.jar;%APP_HOME%\lib\httpmime-4.1.jar;%APP_HOME%\lib\kxml2-2.3.0.jar;%APP_HOME%\lib\annotations-12.0.jar;%APP_HOME%\lib\httpcore-4.1.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\commons-codec-1.4.jar;%APP_HOME%\lib\uast-162.2228.14.jar


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
