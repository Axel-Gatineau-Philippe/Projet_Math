︠017875a6-5e96-4e62-b529-89d7dcdaaf9as︠
from sage.plot.colors import *
phi,theta= var('phi,theta')
rsol= 25
rmer = 7
rven = 10
rter = 10
rmars = 5
rjup = 20
rsat = 17
rura = 13
rnept = 12

#fx = r*sin(phi-i)*cos(theta)
#fy = r*sin(phi)*sin(theta)
#fz = r*cos(phi)q

cter = colormaps.ocean
cmer = colormaps.Pastel1
cven = colormaps.Greys
cnept = colormaps.Blues

def c(phi,theta): return phi/7

sinessol = [parametric_plot([(rsol*sin(phi)*cos(theta-i) ), rsol*sin(phi)*sin(theta-i), rsol*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=yellow) for i in sxrange (.01,7,.2)]
sol = animate(sinessol)

sinesmercure = [parametric_plot([(rmer*sin(phi)*cos(theta-i) + 35*cos(j)), rmer*sin(phi)*sin(theta-i)+35*sin(j), rmer*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=(c,cmer)) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.9)]
mer = animate(sinesmercure)

sinesvenus = [parametric_plot([(rter*sin(phi)*cos(theta-i) + 50*cos(j)), rter*sin(phi)*sin(theta-i) + 50*sin(j), rter*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=(c,cven)) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.8)]
venus = animate(sinesvenus)

sinesterre = [parametric_plot([(rter*sin(phi)*cos(theta-i) + 80*cos(j)), rter*sin(phi)*sin(theta-i)+80*sin(j), rter*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=(c,cter)) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.7)]
terre = animate(sinesterre)

sinesmars = [parametric_plot([(rmars*sin(phi)*cos(theta-i) - 100*cos(j)), rmars*sin(phi)*sin(theta-i) -100*sin(j), rmars*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=(red)) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.6)]
mars = animate(sinesmars)

sinesjup = [parametric_plot([(rjup*sin(phi)*cos(theta-i) + 130*cos(j)), rjup*sin(phi)*sin(theta-i)+130*sin(j), rjup*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=antiquewhite) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.5)]
jupiter = animate(sinesjup)

sinessat = [parametric_plot([(rsat*sin(phi)*cos(theta-i) - 170*cos(j)), rsat*sin(phi)*sin(theta-i)-170*sin(j), rsat*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=lightsteelblue) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.4)]
saturne = animate(sinessat)

sinesura = [parametric_plot([(rura*sin(phi)*cos(theta-i) + 200*cos(j)), rura*sin(phi)*sin(theta-i)+200*sin(j), rura*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=aquamarine) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.2)]
uranus = animate(sinesura)

sinesnept = [parametric_plot([(rnept*sin(phi)*cos(theta-i) - 230*cos(j)), rnept*sin(phi)*sin(theta-i) -230*sin(j), rnept*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=(c, cnept)) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.1)]
neptune = animate(sinesnept)

sinesd = [parametric_plot([(1*sin(phi)*cos(theta-i) - 240*cos(j)), 1*sin(phi)*sin(theta-i) -240*sin(j), 1*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=white) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.1)]
d = animate(sinesd)

sinese = [parametric_plot([(1*sin(phi)*cos(theta-i) + 240*cos(j)), 1*sin(phi)*sin(theta-i) + 240*sin(j), 1*cos(phi)], (phi, 0, 2*pi), (theta, 0, 2*pi),frame=False, color=white) for i in sxrange (.01,7,.2) for j in sxrange(.01,7,.1)]
e = animate(sinese)




terre+sol+mer+jupiter+saturne+uranus+neptune+mars+d+e+venus
︡402da319-02b0-4455-b313-ffdc182539ca︡{"file":{"filename":"/home/user/.sage/temp/project-767f3dab-4533-4146-8568-9ebe6730d504/199/tmp_S6Xjyl.webm","show":true,"text":null,"url":"/767f3dab-4533-4146-8568-9ebe6730d504/raw/.sage/temp/project-767f3dab-4533-4146-8568-9ebe6730d504/199/tmp_S6Xjyl.webm"},"once":false}︡{"done":true}︡









