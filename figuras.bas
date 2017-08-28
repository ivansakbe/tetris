sub tetri(tipo as integer, giro as integer, color as integer)//establece la posicion de las fichas 

	if tipo=0 then //triangulo
		if giro % 4 = 0 then
			if x0<1 then
				x0=1
			elseif x0>9 then
				x0=9
			endif
			x1=0
			y1=-1
			x2=0
			y2=1
			x3=1
			y3=0
			if tablero(x0,y0+y2+1)<>0 or tablero(x0+x3,y0+1)<>0 then
				revy=1
				x0=auxx
			else 
				revy=0
			endif
			/*
			if tablero(x0-1,y0)<>0 or tablero(x0+x1-1,y0+y1)<>0 or tablero(x0+x2-1,y0+y2)<>0 or tablero(x0+x3-1,y0+y3)<>0 then
				xmr=1
			else
				xmr=0
			endif
			if tablero(x0+1,y0)<>0 or tablero(x0+x1+1,y0+y1)<>0 or tablero(x0+x2+1,y0+y2)<>0 or tablero(x0+x3+1,y0+y3)<>0 then
				xml=1
			else
				xml=0
				endif*/

			elseif giro % 4 = 1 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif
				x1=-1
				y1=0
				x2=0
				y2=1
				x3=1
				y3=0
				if tablero(x0+x1,y0+y1+1)<>0 or tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 then
					revy=1
				else 
					revy=0
				end if
			elseif giro % 4 = 2 then
				if x0<2 then
					x0=2
				elseif x0>10 then
					x0=10
				endif
				x1=0
				y1=-1
				x2=-1
				y2=0
				x3=0
				y3=1
				if tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 then
					revy=1
				else 
					revy=0
				end if
			elseif giro % 4 = 3 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif
				x1=0
				y1=-1
				x2=-1
				y2=0
				x3=1
				y3=0
				if tablero(x0,y0+1)<>0 or tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 then
					revy=1
				else 
					revy=0
				end if
			end if
		elseif tipo=1 then //z
			if giro % 4 = 0 then
				if x0<1 then
					x0=1
				elseif x0>9 then
					x0=9
				endif
				x1=1
				y1=-1
				x2=1
				y2=0
				x3=0
				y3=1
				if tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 1 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif
				x1=-1
				y1=-1
				x2=0
				y2=-1
				x3=1
				y3=0
				if tablero(x0,y0+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 or tablero(x0+x1,y0+y1+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 2 then
				if x0<2 then
					x0=2
				elseif x0>10 then
					x0=10
				endif
				x1=-1
				y1=1
				x2=-1
				y2=0
				x3=0
				y3=-1
				if tablero(x0+x1,y0+y1+1)<>0 or tablero(x0,y0+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 3 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif			
				x1=1
				y1=1
				x2=0
				y2=1
				x3=-1
				y3=0
				if tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x1,y0+y1+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			end if
		elseif tipo=2 then // s
			if giro % 4 = 0 then
				if x0<1 then 
					x0=1
				elseif x0>9 then
					x0=9
				endif
				x1=0
				y1=-1
				x2=1
				y2=0
				x3=1
				y3=1
				if tablero(x0,y0+1)<>0 or tablero(x0+x3,y0+y3+1)<>0then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 1 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif
				x1=1
				y1=0
				x2=0
				y2=1
				x3=-1
				y3=1
				if tablero(x0+x1,y0+y1+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 or tablero(x0,y0+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 2 then
				if x0<2 then
					x0=2
				elseif x0>10 then
					x0=10
				endif			
				x1=0
				y1=1
				x2=-1
				y2=0
				x3=-1
				y3=-1
				if tablero(x0+x1,y0+y1+1)<>0 or tablero(x0,y0+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 3 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif			
				x1=-1
				y1=0
				x2=0
				y2=-1
				x3=1
				y3=-1
				if tablero(x0+x3,y0+y3+1)<>0 or tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x1,y0+y1+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			end if
		elseif tipo=3 then // cuadro
			if x0<1 then
				x0=1
			elseif x0>9 then
				x0=9
			endif
			x1=0
			y1=-1
			x2=1
			y2=-1
			x3=1
			y3=0
			if tablero(x0+x3,y0+y3+1)<>0 or tablero(x0,y0+1)<>0 then
				revy=1
			else 
				revy=0
			endif
		elseif tipo=4 then //L
			if giro % 4 = 0 then
				if x0<1 then
					x0=1
				elseif x0>9 then
					x0=9
				endif
				x1=0
				y1=-1
				x2=0
				y2=1
				x3=1
				y3=1
				if tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 1 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif
				x1=1
				y1=0
				x2=-1
				y2=0
				x3=-1
				y3=1
				if tablero(x0+x1,y0+y1+1)<>0 or tablero(x0,y0+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 2 then
				if x0<2 then
					x0=2
				elseif x0>10 then
					x0=10
				endif
				x1=0
				y1=1
				x2=0
				y2=-1
				x3=-1
				y3=-1
				if tablero(x0+x3,y0+y3+1)<>0 or tablero(x0+x1,y0+y1+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 3 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif
				x1=-1
				y1=0
				x2=1
				y2=0
				x3=1
				y3=-1
				if tablero(x0+x2,y0+y2+1)<>0 or tablero(x0,y0+1)<>0 or tablero(x0+x1,y0+y1+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			end if
		elseif tipo=5 then //L invertida
			if giro % 4 = 0 then 
				if x0<2 then
					x0=2
				elseif x0>10 then
					x0=10
				endif
				x1=0
				y1=-1
				x2=0
				y2=1
				x3=-1
				y3=1
				if tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 1 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif
				x1=1
				y1=0
				x2=-1
				y2=0
				x3=-1
				y3=-1
				if tablero(x0+x1,y0+y1+1)<>0 or tablero(x0,y0+1)<>0 or tablero(x0+x2,y0+y2+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 2 then
				if x0<1 then
					x0=1
				elseif x0>9 then
					x0=9
				endif
				x1=0
				y1=1
				x2=0
				y2=-1
				x3=1
				y3=-1
				if tablero(x0+x3,y0+y3+1)<>0 or tablero(x0+x1,y0+y1+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 4 = 3 then
				if x0<2 then
					x0=2
				elseif x0>9 then
					x0=9
				endif
				x1=-1
				y1=0
				x2=1
				y2=0
				x3=1
				y3=1
				if tablero(x0+x3,y0+y3+1)<>0 or tablero(x0,y0+1)<>0 or tablero(x0+x1,y0+y1+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			end if
		elseif tipo=6 then //I
			if giro % 2 = 0 then 
				if x0<1 then
					x0=1
				elseif x0>10 then
					x0=10
				endif
				x1=0
				y1=1
				x2=0
				y2=-1
				x3=0
				y3=-2
				if tablero(x0+x1,y0+y1+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			elseif giro % 2 = 1 then
				if x0<3 then
					x0=3
				elseif x0>9 then
					x0=9
				endif
				x1=1
				y1=0
				x2=-1
				y2=0
				x3=-2
				y3=0
				if tablero(x0+x1,y0+y1+1)<>0 or tablero(x0+x2,y0+y2+1)<>0 or tablero(x0+x3,y0+y3+1)<>0 or tablero(x0,y0+1)<>0 then
					revy=1
				else 
					revy=0
				endif
			end if
		end if
		tablero(x0,y0)=color
		tablero(x0+x1,y0+y1)=color
		tablero(x0+x2,y0+y2)=color
		tablero(x0+x3,y0+y3)=color
	end sub
