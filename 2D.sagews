︠c79681f9-647d-4b5c-966c-64179115391a︠
from sage.plot.colors import *

N=20

rSoleil  = 25
rMercure = 7
rVenus   = 10
rTerre   = 10
rMars    = 5
rJupiter = 20
rSaturne = 17
rUranus  = 13
rNeptune = 12

x = [rSoleil*cos(k*2*pi/N) - 4 for k in [0..N-1] ]
y = [rSoleil*sin(k*2*pi/N) + 2 for k in [0..N-1] ]
z = [1 for k in [0..N-1] ]

xMercure = [rMercure*cos(k*2*pi/N) - 35 for k in [0..N-1] ]
yMercure = [rMercure*sin(k*2*pi/N) - 35 for k in [0..N-1] ]

xVenus = [rVenus*cos(k*2*pi/N) - 50 for k in [0..N-1] ]
yVenus = [rVenus*sin(k*2*pi/N) + 50 for k in [0..N-1] ]

xTerre = [rTerre*cos(k*2*pi/N) + 80 for k in [0..N-1] ]
yTerre = [rTerre*sin(k*2*pi/N) + 80 for k in [0..N-1] ]

xMars = [rMars*cos(k*2*pi/N) + 100 for k in [0..N-1] ]
yMars = [rMars*sin(k*2*pi/N) - 100 for k in [0..N-1] ]

xJupiter = [rJupiter*cos(k*2*pi/N) - 130 for k in [0..N-1] ]
yJupiter = [rJupiter*sin(k*2*pi/N) - 130 for k in [0..N-1] ]

xSaturne = [rSaturne*cos(k*2*pi/N) - 170 for k in [0..N-1] ]
ySaturne = [rSaturne*sin(k*2*pi/N) + 170 for k in [0..N-1] ]

xUranus = [rUranus*cos(k*2*pi/N) + 200 for k in [0..N-1] ]
yUranus = [rUranus*sin(k*2*pi/N) + 200 for k in [0..N-1] ]

xNeptune = [rNeptune*cos(k*2*pi/N) + 230 for k in [0..N-1] ]
yNeptune = [rNeptune*sin(k*2*pi/N) - 230 for k in [0..N-1] ]

Soleil  = [ vector(RR, zip(x,        y,        z)[j]) for j in [0..len(x)-1] ]
Mercure = [ vector(RR, zip(xMercure, yMercure, z)[j]) for j in [0..len(x)-1] ]
Venus   = [ vector(RR, zip(xVenus,   yVenus,   z)[j]) for j in [0..len(x)-1] ]
Terre   = [ vector(RR, zip(xTerre,   yTerre,   z)[j]) for j in [0..len(x)-1] ]
Mars    = [ vector(RR, zip(xMars,    yMars,    z)[j]) for j in [0..len(x)-1] ]
Jupiter = [ vector(RR, zip(xJupiter, yJupiter, z)[j]) for j in [0..len(x)-1] ]
Saturne = [ vector(RR, zip(xSaturne, ySaturne, z)[j]) for j in [0..len(x)-1] ]
Uranus  = [ vector(RR, zip(xUranus,  yUranus,  z)[j]) for j in [0..len(x)-1] ]
Neptune = [ vector(RR, zip(xNeptune, yNeptune, z)[j]) for j in [0..len(x)-1] ]

C = vector( [x[2], y[2], z[2]] )

cadre = 300
t = pi

def RotationDirecteSoleil (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, rgbcolor='yellow', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

def RotationDirecteMercure (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, color='lightgrey', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

def RotationDirecteVenus (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, rgbcolor='peachpuff', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

def RotationDirecteTerre (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, rgbcolor='mediumturquoise', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

def RotationDirecteMars (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, rgbcolor='orangered', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

def RotationDirecteJupiter (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, rgbcolor='antiquewhite', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

def RotationDirecteSaturne (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, rgbcolor='blanchedalmond', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

def RotationDirecteUranus (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, rgbcolor='aquamarine', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

def RotationDirecteNeptune (t, Circle) :
    MCmoins = matrix ( [[1, 0, -C[0]],[0, 1, -C[1]],[0,0,1]])
    M       = matrix ( [[cos(t), -sin(t), 0],[sin(t), cos(t), 0],[0, 0, 1]])
    MCplus  = matrix ( [[1, 0, C[0]], [0, 1, C[1]], [0,0,1]])
    RotationDirecte = MCplus*M*MCmoins
    CircleTourne    = [RotationDirecte*Circle[j] for j in [0..len(x)-1]]
    CircleTrace     = [CircleTourne[j][0:2]      for j in [0..len(x)-1]]
    return polygon(CircleTrace, fill=True, rgbcolor='royalblue', xmin=-cadre, xmax=cadre, ymin=-cadre, ymax=cadre)

RotationSoleil = [RotationDirecteSoleil(1, Soleil) for j in sxrange (.01,50,.1)]
sinesSoleil    = animate(RotationSoleil, axes=False)

RotationMercure = [RotationDirecteMercure(t*j/N, Mercure) for j in sxrange (.01,50,.9)]
sinesMercure    = animate(RotationMercure, axes=False)

RotationVenus = [RotationDirecteVenus(t*j/N, Venus) for j in sxrange (.01,50,.8)]
sinesVenus    = animate(RotationVenus, axes=False)

RotationTerre = [RotationDirecteTerre(t*j/N, Terre) for j in sxrange (.01,50,.7)]
sinesTerre    = animate(RotationTerre, axes=False)

RotationMars = [RotationDirecteMars(t*j/N, Mars) for j in sxrange (.01,50,.6)]
sinesMars    = animate(RotationMars, axes=False)

RotationJupiter = [RotationDirecteJupiter(t*j/N, Jupiter) for j in sxrange (.01,50,.5)]
sinesJupiter    = animate(RotationJupiter, axes=False)

RotationSaturne = [RotationDirecteSaturne(t*j/N, Saturne) for j in sxrange (.01,50,.4)]
sinesSaturne    = animate(RotationSaturne, axes=False)

RotationUranus = [RotationDirecteUranus(t*j/N, Uranus) for j in sxrange (.01,50,.3)]
sinesUranus    = animate(RotationUranus, axes=False)

RotationNeptune = [RotationDirecteNeptune(t*j/N, Neptune) for j in sxrange (.01,50,.2)]
sinesNeptune    = animate(RotationNeptune, axes=False)

sinesSoleil + sinesMercure + sinesVenus + sinesTerre + sinesMars + sinesJupiter + sinesSaturne + sinesUranus + sinesNeptune
︡64bc5e4b-89aa-4d75-a891-357dd29bca73︡









