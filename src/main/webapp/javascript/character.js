/*

*/

function createinput(id, type, locationLeft, locationTop, width, height, backgroundColor){
	var input = document.createElement("input");
	var container = document.getElementById("fields");
	input.type = type;
	input.id = id;
	input.style.left = locationLeft;
	input.top = locationTop;
	input.width = width;
	input.height = height;
	input.backgroundColor = backgroundColor;
	
	container.appendChild(input);
}