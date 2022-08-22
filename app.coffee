
{LottieLayer} = require 'LottieLayer'

customAnim = new LottieLayer
	name: "customAnim"
	path: "images/animation.json"

layerA = new BackgroundLayer
	backgroundColor: "#F5F5F5"

# Just for coolness
Framer.Defaults.Animation = curve: Bezier.linear

# Create a new ScrollComponent 
scroll = new ScrollComponent
	width: 375
	height: 1700/2
scroll.scrollHorizontal = false

ReadOut = new TextLayer
	text: "0"
	y: 361
	x: 188
	opacity: 0.00

scroll.onScroll ->
  ReadOut.text = scroll.content.y

# Adjust height of ScrollComponent 
scroll.contentInset =
	top: 0
	right: 0
	bottom: 0
	left: 0

assets = new Layer
	width: 702
	height: 168
	image: "images/assets.png"
	scale: 0.5
	y: 54
	x: -163
	parent: scroll.content

category = new Layer
	width: 702
	height: 168
	image: "images/category.png"
	scale: 0.5
	x: -163
	y: 146
	parent: scroll.content

watchbg = new Layer
	width: 702
	height: 480
	image: "images/watchbg.png"
	scale: 0.5
	y: 160
	x: -163
	parent: scroll.content

layerA=new Layer
	y: 280
	x: 220
	width: 144
	height: 240
	borderRadius: 8
	parent: scroll.content
	opacity: 1.00
	backgroundColor: "rgba(123,123,123,0)"
	
watchhh = new Layer
	width: 142
	height: 294
	image: "images/watchhh.png"
	x: 2
	parent: layerA
	y: -27


layerA.clip = true

scroll.onMove ->
	watchhh.scale=1.0+(scroll.content.y/1500)


videobg = new Layer
	width: 702
	height: 480
	image: "images/videobg.png"
	scale: 0.5
	y: 408
	x: -163
	parent: scroll.content


layerB=new Layer
	y: 528
	x: 163
	width: 201
	height: 240
	borderRadius: 8
	parent: scroll.content
	opacity: 1.00
	backgroundColor: "rgba(123,123,123,0)"
	
women = new Layer
	width: 1150
	height: 883
	image: "images/women.png"
	scale:0.25
	y: -297
	x: -468
	parent: layerB

layerB.clip = true

Bubble_1 = new Layer
	width: 238
	height: 66
	image: "images/Bubble%201.png"
	parent: scroll.content
	y: 566
	x: 149
	scale: 0.5

animationA = new Animation Bubble_1,
	y: 560
	opacity: 0
	options:
		curve: Spring(damping: 0.5)
		time: 2

animationB = animationA.reverse()
 
# Alternate between the two animations 
animationA.on Events.AnimationEnd, animationB.start
animationB.on Events.AnimationEnd, animationA.start
 
animationA.start()
	

Bubble_2 = new Layer
	width: 205
	height: 66
	image: "images/Bubble%202.png"
	parent: scroll.content
	y: 541
	x: 132
	scale: 0.5	

animationC = new Animation Bubble_2,
	y: 541-6
	opacity: 0
	options:
		curve: Spring(damping: 0.5)
		time: 2
		delay:0.02

animationD = animationC.reverse()
 
# Alternate between the two animations 
animationC.on Events.AnimationEnd, animationD.start
animationD.on Events.AnimationEnd, animationC.start
 
animationC.start()


Bubble_3 = new Layer
	width: 97
	height: 66
	image: "images/Bubble%203.png"
	parent: scroll.content
	y: 522
	x: 266
	scale: 0.5

animationE = new Animation Bubble_3,
	y: 522-6
	opacity: 0
	options:
		curve: Spring(damping: 0.5)
		time: 2
		delay:0.01

animationF = animationE.reverse()
 
# Alternate between the two animations 
animationE.on Events.AnimationEnd, animationF.start
animationF.on Events.AnimationEnd, animationE.start
 
animationE.start()


black = new Layer
	width: 702
	height: 480
	image: "images/black.png"
	scale: 0.5
	x: -163
	y: 656
	parent: scroll.content

layerC=new Layer
	x: 210
	y: 828
	parent: scroll.content
	width: 153
	opacity: 1.00
	backgroundColor: "rgba(123,123,123,0)"
	height: 188

sofa = new Layer
	width: 406
	height: 273
	image: "images/sofa.png"
	scale: 0.5
	x: -77
	parent: layerC
	y: -42

flight = new Layer
	width: 794
	height: 246
	image: "images/flight.png"
	parent: layerC
	scale: 0.5
	x: -174
	y: 93
 

scroll.onMove ->
	if scroll.scrollY>300
		flight.y=93+(scroll.content.y+300)/1.5
		sofa.y=-42+100+(scroll.content.y/3)
		sofa.scale=0.5+(scroll.content.y+300)/3000
		sofa.opacity=1+(scroll.content.y+300)/250

	else
		sofa.opacity=1.0
		sofa.scale=0.5
	
layerC.clip=true


product = new Layer
	width: 702
	height: 480
	image: "images/product.png"
	scale: 0.5
	x: -163
	y: 904
	parent: scroll.content


# Layer stick to the top
nav = new Layer
	width: 750
	height: 176
	image: "images/nav.png"
	scale: 0.5
	x: -187
	y: -44

# Layer stick to the buttom
tab = new Layer
	width: 750
	height: 166
	image: "images/tab.png"
	scale: 0.5
	x: -187
	y: 687

coffee = new Layer
	width: 702
	height: 480
	image: "images/medicine.png"
	scale: 0.5
	parent: scroll.content
	x: -163
	y: 1152



goldd = new Layer
	width: 702
	height: 481
	image: "images/goldd.png"
	scale: 0.5
	parent: scroll.content
	x: -163
	y: 1648


layerD=new Layer
	height: 240
	width: 351
	borderRadius: 8
	parent:scroll.content
	y: 1520
	backgroundColor: "rgba(255,255,255,1)"
	x: 13

layerE=new Layer
	width: 352
	y: 2016
	x: 12
	height: 240
	borderRadius: 8
	parent: scroll.content
	backgroundColor: "rgba(255,255,255,1)"

layerF=new Layer
	width: 352
	y: 2264
	x: 12
	height: 240
	borderRadius: 8
	parent: scroll.content
	backgroundColor: "rgba(255,255,255,1)"
	
layerG=new Layer
	width: 352
	y: 2264
	x: 12
	height: 240
	borderRadius: 8
	parent: scroll.content
	backgroundColor: "rgba(252,255,84,0)"

layerH=new Layer
	width: 352
	y: 2760
	x: 12
	height: 240
	borderRadius: 8
	parent:layerI
	backgroundColor: "rgba(255,255,255,1)"

layerI=new Layer
	width: 352
	y: 1024
	x: 12
	height: 240
	borderRadius: 8
	parent: scroll.content
	backgroundColor: "rgba(255,255,255,1)"

products = new LottieLayer
	name:"productsAnimation"
	path:"images/products.json"
	parent:layerI
	size:350
	autoplay: false
	speed: 0.001
	loop:false

updown = new LottieLayer
	name:"updownAnimation"
	path:"images/updown.json"
	parent:layerD
	size:350
	autoplay: false
	speed: 0.001
	loop:false



wish = new LottieLayer
	name: "wishAnimation"
	path: "images/wish.json"
	parent:layerE
	size:350
	autoplay: false
	speed: 0.001
	loop:false

coff = new Layer
	width: 702
	height: 480
	image: "images/coff.gif"
	scale: 0.5
	parent: layerF
	x: -175
	y: -120
	
coffeee = new LottieLayer
	name: "coffeeeAnimation"
	path: "images/coffeee.json"
	parent:layerG
	size:350
	autoplay: false
	speed: 0.001
	loop:false

scroll.onMove ->
	if scroll.scrollY>1024
		updown.goToAndPlay([scroll.scrollY-1024]/3)
	else
		updown.pause()

scroll.onMove ->
	if scroll.scrollY>1750
		wish.goToAndPlay([scroll.scrollY-1600]/5)
	else
		wish.pause()

scroll.onMove ->
	if scroll.scrollY>1900
		coffeee.goToAndPlay([scroll.scrollY-1750]/5)
	else
		coffeee.pause()

coffeee.onComplete ->
	coffeee.pause()

scroll.onMove ->
	if scroll.scrollY>620
		products.goToAndPlay([scroll.scrollY-620]/2)
	else
		products.pause()



layerJ = new Layer
	width: 352
	y: 2519
	height: 240
	borderRadius: 8
	parent:scroll.content
	backgroundColor: "rgba(255,255,255,1)"
	x: 12
	opacity: 0.00


layerK = new Layer
	width: 352
	y: 2772
	height: 119
	borderRadius: 8
	parent:scroll.content
	backgroundColor: "rgba(255,255,255,1)"
	x: 12
	opacity: 0.00



