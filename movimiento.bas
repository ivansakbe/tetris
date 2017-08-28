sub movimiento //determina el movimiento de las fichas 
	if y0=23 or (y0+y1=23) or (y0+y2=23) or (y0+y3=23) or revy=1 or aux=0 then
		if y0=5 or y0+1=5 then
			print "game over"
			juega=0
		end if
		y0=3
		x0=5
		giro=0
		tipo=0//rnd(7)
		c=rnd(6)+1
		aux=1
	else
		call tetri(tipo,giro,0)
		auxx=x0
		if muevey%10=0	then	
			y0=y0+1
		endif
	end if
	if (td <> -1 ) then
		tdx = 10*((td / 65536) & 0x0000ffff)/screenwidth()
		tdy = td & 0x0000ffff
	else if (tm <> -1) then
		tmx = 10*((tm / 65536) & 0x0000fff)/screenwidth()
		tmy = tm & 0x0000ffff
		auxx=x0+(tmx-tdx)
		movio=1
		//if tablero(auxx,y0)<>0 then 
		x0=auxx
		//else
		//	x0=x0
		//endif
	end if
end sub
