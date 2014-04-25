@echo off
rem wintux.epsitec.local bootstrapper

echo Bootstrap...

call pkg/remove mono
call pkg/install mono
