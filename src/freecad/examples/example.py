import FreeCAD
import Part

def create_save_cube():
    # Create a new document
    doc = FreeCAD.newDocument("SimpleCube")

    # Create a cube
    cube = doc.addObject("Part::Box", "MyCube")
    cube.Length = "10 mm"
    cube.Width = "10 mm"
    cube.Height = "10 mm"

    # Recompute the document
    doc.recompute()

    # Save the document
    doc.saveAs("/path/to/your/directory/SimpleCube.FCStd")

create_save_cube()