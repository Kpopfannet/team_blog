$(document).ready(function () {
	clock()
})

function clock(){
	var canvas = document.getElementById("clock");
	var ctx = canvas.getContext("2d");
	// Define some size
	var radius = canvas.height / 2;
	// Center the ctx
	ctx.translate(radius,radius);
	// Draw the Clock every second
	setInterval(drawClock, 1000);
	// Define how to draw
	function drawClock() {
		drawFace(ctx, radius);
		drawNumbers(ctx, radius);
		drawTime(ctx,radius);
		drawNose(ctx,radius);
	}
	// Define how to draw the Face
	function drawFace(ctx, radius) {
		ctx.beginPath();
		ctx.arc(0, 0, radius, 0, 2*Math.PI);
		ctx.fillStyle = "#F8F8FF";
		ctx.fill();
	}
	// Define how to draw the Numbers
	function drawNumbers(ctx, radius) {
		var ang;
		var num;
		// Define the text styles
		ctx.font = "14px 'Lato'";
		ctx.fillStyle = "black";
		ctx.textBaseline = "middle";
		ctx.textAlign = "center";
		// Rotate and put number and rotate back
		for(num=1; num<=12; num++) {
			ang = num * Math.PI / 6;
			ctx.rotate(ang);
	    ctx.translate(0, -radius*0.85);
	    ctx.rotate(-ang);
	    ctx.fillText(num.toString(), 0, 0);
	    ctx.rotate(ang);
	    ctx.translate(0, radius*0.85);
	    ctx.rotate(-ang);
		}
	}
	// Draw the Hands depends on current time
	function drawTime(ctx,radius) {
		// Get the current time
		var now = new Date();
		var hour = now.getHours();
		var minute = now.getMinutes();
		var second = now.getSeconds();
		// Draw the Hour Hand
		hour=hour%12;
		hour=(hour*Math.PI/6)+(minute*Math.PI/(6*60))+(second*Math.PI/(360*60));
		drawHand(ctx, hour, radius*0.4, 4, "black");
		// Draw the Minute Hand
		minute=(minute*Math.PI/(30))+(second*Math.PI/(30*60));
		drawHand(ctx, minute, radius*0.6, 2, "black");
		// Draw the Second Hand
		second=(second*Math.PI/30);
		drawHand(ctx, second, radius*0.75, 1, "#DC143C");
	}
	// Define how to draw the Hands
	function drawHand(ctx, pos, length, width, color){
		ctx.beginPath();
		ctx.lineWidth = width;
		ctx.lineCap = "round";
		ctx.moveTo(0,0);
		ctx.rotate(pos);
		ctx.lineTo(0, -length);
		ctx.strokeStyle = color;
		ctx.stroke();
		ctx.rotate(-pos);
	}
	function drawNose(ctx, radius) {
		ctx.beginPath();
		ctx.arc(0, 0, radius*.08, 0, 2*Math.PI);
		ctx.fillStyle = "#DC143C";
		ctx.fill();
	}
}
