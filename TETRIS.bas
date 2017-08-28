dim tamano,wi,he,xi,xf,yi,yf,level,score,lines,w,h,x0,y0,x1,x2,x3,y1,y2,y3,tipo,aux,giro,c,revy,revx,tu,td,tm,tdx,tdy,tmx,tmy, juega,xmr,xml, muevey, movio, auxx as integer
dim tablero(10,24) as integer
#include "colors.bas"
#include "figuras.bas"
#include "movimiento.bas"

sub main
	movio=0
	xmr=0
	xml=0
	dim i,j as integer
	tipo=0
	graphics
	setcolor 0,0,0
	repaint
	//Declaraion de variables para marcos
	wi=screenwidth()/3
	he=screenheight()/7
	xi=22
	yi=22
	xf=2*wi
	yf=screenheight-50
	tamano=round((2*wi)/15,0)
	w=(xf-xi)/10
	h=(yf-yi)/25
	juega=1
	while (juega=1)
		td=touchdown()
		tu=touchup()
		tm=touchmove()
		call movimiento
		setcolor 255,255,0
		drawrect 20,20,(10*w)+2,(h*23)+4
		setcolor 255,255,0
		setfont "monospace", 50
		drawstring "NEXT",(wi*2)+50,150
		drawrect (wi*2)+50,150,he-50,he-50
		drawstring "LEVEL",(wi*2)+50,2*he
		drawstring "SCORE",(wi*2)+50,3*he
		drawstring "LINES",(wi*2)+50,4*he
		drawstring str$(level),(wi*2)+50,2*he+100
		drawstring str$(score),(wi*2)+50,3*he+100
		drawstring str$(lines),(wi*2)+50,4*he+100
		if tu<>-1 and tm=-1and movio=0 then
			giro=giro+1
		end if
		if tu<>-1 then
			movio=0
		end if
		call tetri(tipo,giro,c)
		for i=1 to 10 
			for j=1 to 23
				colors(tablero(i,j))
				fillrect (w*(i-1))+22,(h*(j-1))+22,w-4,h-4
			end for
		end for
		//call movimiento
		setcolor 0,0,0
		fillrect 20,20,(10*w)+4,(h*3)+2
		repaint
		sleep 100
		muevey=muevey+1
		cls
	end while
end sub
