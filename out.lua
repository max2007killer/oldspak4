local f=string.byte;local i=string.char;local c=string.sub;local C=table.concat;local u=math.ldexp;local I=getfenv or function()return _ENV end;local l=setmetatable;local h=select;local d=unpack;local r=tonumber;local function s(d)local e,o,n="","",{}local t=256;local a={}for l=0,t-1 do a[l]=i(l)end;local l=1;local function f()local e=r(c(d,l,l),36)l=l+1;local o=r(c(d,l,l+e-1),36)l=l+e;return o end;e=i(f())n[1]=e;while l<#d do local l=f()if a[l]then o=a[l]else o=e..c(e,1,1)end;a[t]=e..c(o,1,1)n[#n+1],e,t=o,o,t+1 end;return table.concat(n)end;local t=s('23322U27522S2742751H191K1D1L1M17151322S23A27522U21I1K191B1M1I21G19141J1U1Z1G13181I22S22Y27L21B181G191D1321H131K27Z1K27L22U26A25C26R25I21322S22P27L27N19121J1528223027L1A1917121L1I1K1F181122S22Q27L11171B27I28P27521A1I1I1M1X1328221R27L1E29J1M1L22K2212211K171H220111F1I1E1J27V1L28D15192812801I2202AA1B2211B171U22C22E22E2291D1F1A1A28D22127N1F1G171I131X1J1F22321G132AT172A82232AI17296221141A27G1D1A1F293296112201I1U1I28H22U22X27L25A23224624921C23227525B22U21Y22U21Q27L2C422E2C727L25221Y2BZ21Q2C622U24Y2262CG2262C321Y27K2CH27525A22E2CG2CB22U25622M2CG22M27525723226E2C72C22CJ21A2CG21A27524V2D721A2D72572CI21L2CI2C42C621E2C923227K21N2D725B2D721Q2D7');local n=bit and bit.bxor or function(l,e)local o,n=1,0 while l>0 and e>0 do local a,c=l%2,e%2 if a~=c then n=n+o end l,e,o=(l-a)/2,(e-c)/2,o*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then n=n+o end l,o=(l-e)/2,o*2 end return n end local function e(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local a,e,o,c=f(t,l,l+3);a=n(a,102)e=n(e,102)o=n(o,102)c=n(c,102)l=l+4;return(c*16777216)+(o*65536)+(e*256)+a;end;local function r()local e=n(f(t,l,l),102);l=l+1;return e;end;local function s()local l=o();local n=o();local c=1;local o=(e(n,1,20)*(2^32))+l;local l=e(n,21,31);local e=((-1)^e(n,32));if(l==0)then if(o==0)then return e*0;else l=1;c=0;end;elseif(l==2047)then return(o==0)and(e*(1/0))or(e*(0/0));end;return u(e,l-1023)*(c+(o/(2^52)));end;local a=o;local function u(e)local o;if(not e)then e=a();if(e==0)then return'';end;end;o=c(t,l,l+e-1);l=l+e;local e={}for l=1,#o do e[l]=i(n(f(c(o,l,l)),102))end return C(e);end;local l=o;local function f(...)return{...},h('#',...)end local function C()local t={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local c={};local l={};local a={t,nil,c,nil,l};local l=o()local d={0,0,0,0,0,0,0,0,0};for o=1,l do local e=r();local l;if(e==3)then l=(r()~=0);elseif(e==0)then l=s();elseif(e==2)then l=u();end;d[o]=l;end;a[2]=d a[4]=r();for l=1,o()do c[l-1]=C();end;for a=1,o()do local c=n(o(),217);local o=n(o(),88);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;t[a]=l;end;return a;end;local function L(l,e,r)local o=l[1];local n=l[2];local e=l[3];local l=l[4];return function(...)local t=o;local c=n;local e=e;local n=l;local s=f local o=1;local a=-1;local u={};local f={...};local i=h('#',...)-1;local l={};local e={};for l=0,i do if(l>=n)then u[l-n]=f[l+1];else e[l]=f[l+1];end;end;local l=i-n+1 local l;local n;while true do l=t[o];n=l[1];if n<=9 then if n<=4 then if n<=1 then if n==0 then do return end;else do return end;end;elseif n<=2 then e[l[2]]=(l[3]~=0);elseif n>3 then local o=l[2];local n=e[l[3]];e[o+1]=n;e[o]=n[c[l[5]]];else e[l[2]]();a=A;end;elseif n<=6 then if n>5 then local o=l[2];local n=e[l[3]];e[o+1]=n;e[o]=n[c[l[5]]];else e[l[2]]();a=A;end;elseif n<=7 then local n=l[2];local c={};local o=0;local l=n+l[3]-1;for l=n+1,l do o=o+1;c[o]=e[l];end;local c,l=s(e[n](d(c,1,l-n)));l=l+n-1;o=0;for l=n,l do o=o+1;e[l]=c[o];end;a=l;elseif n==8 then e[l[2]]=e[l[3]][c[l[5]]];else e[l[2]]=r[c[l[3]]];end;elseif n<=14 then if n<=11 then if n>10 then local o=l[2];local c={};local n=0;local l=o+l[3]-1;for l=o+1,l do n=n+1;c[n]=e[l];end;e[o](d(c,1,l-o));a=o;else local o=l[2];local c={};local n=0;local l=o+l[3]-1;for l=o+1,l do n=n+1;c[n]=e[l];end;e[o](d(c,1,l-o));a=o;end;elseif n<=12 then local n=l[2];local c={};local o=0;local t=a;for l=n+1,t do o=o+1;c[o]=e[l];end;local c={e[n](d(c,1,t-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;a=l;elseif n>13 then local u;local i;local h;local f;local n;e[l[2]]=r[c[l[3]]];o=o+1;l=t[o];e[l[2]]=e[l[3]][c[l[5]]];o=o+1;l=t[o];n=l[2];f=e[l[3]];e[n+1]=f;e[n]=f[c[l[5]]];o=o+1;l=t[o];e[l[2]]=c[l[3]];o=o+1;l=t[o];e[l[2]]=c[l[3]];o=o+1;l=t[o];n=l[2];h={};i=0;u=n+l[3]-1;for l=n+1,u do i=i+1;h[i]=e[l];end;e[n](d(h,1,u-n));a=n;o=o+1;l=t[o];e[l[2]]=r[c[l[3]]];o=o+1;l=t[o];e[l[2]]=r[c[l[3]]];o=o+1;l=t[o];n=l[2];f=e[l[3]];e[n+1]=f;e[n]=f[c[l[5]]];o=o+1;l=t[o];e[l[2]]=c[l[3]];else local n=l[2];local t={};local o=0;local c=a;for l=n+1,c do o=o+1;t[o]=e[l];end;local c={e[n](d(t,1,c-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;a=l;end;elseif n<=17 then if n<=15 then e[l[2]]=c[l[3]];elseif n==16 then e[l[2]]=(l[3]~=0);else e[l[2]]=e[l[3]][c[l[5]]];end;elseif n<=18 then local n=l[2];local c={};local o=0;local l=n+l[3]-1;for l=n+1,l do o=o+1;c[o]=e[l];end;local c,l=s(e[n](d(c,1,l-n)));l=l+n-1;o=0;for l=n,l do o=o+1;e[l]=c[o];end;a=l;elseif n==19 then e[l[2]]=r[c[l[3]]];else e[l[2]]=c[l[3]];end;o=o+1;end;end;end;return L(C(),{},I())();
