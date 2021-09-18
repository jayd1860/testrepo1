function  Buildme(targetname)
if nargin==0
    targetname = 'Apptry1GUI';
end
Buildexe(targetname,{'Install','setpaths.m'})

