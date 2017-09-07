import re
import sys

class Type:
    def __init__(self, oname, name, funclist):
        self.oname = oname
        self.name = name
        self.funclist = funclist

    def create_typedef(self):
        if (self.name != self.oname):
            return "typedef " + self.oname.replace("@", " ") + " " + self.name + ";\n"
        else:
            return ""
        
    def create_functions(self, typelist):
        return self.create_with_func(typelist, lambda t : t[0] + " " + t[1] + "\n")
        
    def create_declares(self, typelist):
        return self.create_with_func(typelist, lambda t : t[0] + ";\n")

    def create_with_func(self, typelist, f):
        string = ""
        for func in self.funclist:
            decfunclist = self.get_declare(func, typelist)
            for t in decfunclist:
                string += f(t)
        return string

    def get_format(self, format, count):
        return format % ((self.name,) * count)
        
    def get_declare(self, type, typelist):
        name = self.name
        if (type == "cov"):
            result = []
            for t in typelist:
                n = t.name
                result.append(["%s cov_%s_%s(%s x)" % (n, name, n, name), "{ return (%s)x; }" % n])
            return result
        else:
            if (type == "as"):
                return [
                    [ self.get_format("%s add_%s(%s a, %s b)", 4), "{ return a + b; }" ],
                    [ self.get_format("%s sub_%s(%s a, %s b)", 4), "{ return a - b; }" ],
                    ]
            elif (type == "asi"):
                return [
                    [ self.get_format("%s add_%s(%s a, int b)", 3), "{ return a + b; }" ],
                    [ self.get_format("int sub_%s(%s a, %s b)", 3), "{ return a - b; }" ],
                    ]
            elif (type == "md"):
                return [
                    [ self.get_format("%s mul_%s(%s a, %s b)", 4), "{ return a * b; }" ],
                    [ self.get_format("%s div_%s(%s a, %s b)", 4), "{ return a / b; }" ],
                    ]
            elif (type == '%'):
                return [
                    [ self.get_format("%s mod_%s(%s a, %s b)", 4), "{ return a % b; }" ],
                    ]
            elif (type == "cmp"):
                return [
                    [ self.get_format("bool cmp_lt_%s(%s a, %s b)", 3), "{ return a < b; }" ],
                    [ self.get_format("bool cmp_le_%s(%s a, %s b)", 3), "{ return a <= b; }" ],
                    [ self.get_format("bool cmp_ge_%s(%s a, %s b)", 3), "{ return a >= b; }" ],
                    [ self.get_format("bool cmp_gt_%s(%s a, %s b)", 3), "{ return a > b; }" ],
                ]
            elif (type == "equ"):
                return [
                    [ self.get_format("bool cmp_eq_%s(%s a, %s b)", 3), "{ return a == b; }" ],
                    [ self.get_format("bool cmp_ne_%s(%s a, %s b)", 3), "{ return a != b; }" ],
                ]
            else:
                print("Not find match type.")

def create_include(name):
    return "#include <%s>\n" % name

def create_local_include(name):
    return "#include \"%s\"\n" % name

def create_header(typelist):
    string = ""
    string += create_include("stdint.h")
    string += create_include("stdbool.h")
    string += "\n"
    for type in typelist:
        string += type.create_typedef()
    string += "\n"
    for type in typelist:
        string += type.create_declares(typelist)
    
    return string

def create_source(typelist, header_name):
    string = ""
    string += create_local_include(header_name)
    string += "\n"
    for type in typelist:
        string += type.create_functions(typelist)
    
    return string

# original_string -> identifier_string
def replace_identifier(original_string : str):
    return re.sub(r'([\:\.\%])', r'%\1', original_string)

def main():
    arglen = len(sys.argv)
    filename = sys.argv[1] if (arglen > 1) else "typeinfo.txt"
    outputfile = sys.argv[2] if (arglen > 2) else filename
    outputfile_inc = outputfile + ".h"
    outputfile_src = outputfile + ".c"
    direction = sys.argv[3] if (arglen > 3) else "."

    typelist = []

    with open(filename, "r") as file:
        for line in file.readlines():
            data = line.rstrip().split(" ")
            if (not data or data[0] == ''):
                continue
            typelist.append(Type(data[0], data[1], data[2:]))
    
    open(direction + "/" + outputfile_inc, "w").write(create_header(typelist))
    open(direction + "/" + outputfile_src, "w").write(create_source(typelist, outputfile_inc))

main()
