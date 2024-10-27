@ECHO OFF

For /R "%1" %%G IN (*.classpath) do del "%%G"
For /R "%1" %%G IN (*.project) do del "%%G"
For /R "%1" %%G IN (*.iml) do del "%%G"
For /d /r "%1" %%d IN (.settings) do @if exist "%%d" rmdir /s/q "%%d"
For /d /r "%1" %%d IN (.idea) do @if exist "%%d" rmdir /s/q "%%d"
For /d /r "%1" %%d IN (target) do @if exist "%%d" rmdir /s/q "%%d"
For /d /r "%1" %%d IN (data) do @if exist "%%d" rmdir /s/q "%%d"
For /d /r "%1" %%d IN (logs) do @if exist "%%d" rmdir /s/q "%%d"
For /d /r "%1" %%G IN (.git) do @if exist "%%d" rmdir /s/q "%%d"
For /d /r "%1" %%d IN (node_modules) do @if exist "%%d" rmdir /s/q "%%d"
