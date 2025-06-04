@ECHO OFF
rem エクスプローラーを再起動させる（エクスプローラーがネットワークドライブを掴んでてエラーになるので）
taskkill /f /im explorer.exe
start explorer.exe

rem ネットワークドライブ削除
FOR %%i IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO NET USE %%i: /delete
FOR %%i IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO NET USE %%i: /PERSISTENT:NO
