module door.shapes.factory;
import door.shapes.rectangle;
import door.shapes.regular;
import door.colors.web;
import raylib;

enum RegularPolygons
{
	triangle = 3,
	square,
	pentagon,
	hexagon,
	heptagon,
	octagon,
	nonagon,
	decagon,
	hendecagon,
	dodecagon,
	tridecagon,
	tetradecagon,
	pentadecagon,
	hexadecagon,
	heptadecagon,
	octadecagon,
	nonadecagon,
	icosagon,
	icosihenagon,
	icosidigon,
	icositrigon,
	icositetragon,
	icosipentagon,
	icosihexagon,
	icosiheptagon,
	icosioctagon,
	icosienneagon,
	triacontagon  = 30,
	tetracontagon = 40,
	pentacontagon = 50,
	hexacontagon  = 60,
	heptacontagon = 70,
	octacontagon  = 80,
	nonacontagon  = 90,
	hectagon      = 100
}

Rect createSquare(int x, int y, int length, Color color = black)
{
    return new Rect(x, y, length, length, color);
}

Rect createSquare(Vector2 position, int length, Color color = black)
{
    return new Rect(position, length, length, color);
}

RegularPolygon create(RegularPolygons polygon, int x, int y, float radius, float rotation = 45, Color color = black)
{
	return new RegularPolygon(x, y, cast(int)polygon, radius, rotation, color);
}

RegularPolygon create(RegularPolygons polygon, Vector2 position, float radius, float rotation = 45, Color color = black)
{
	return new RegularPolygon(position, cast(int)polygon, radius, rotation, color);
}
