class Type
  attr_reader :name, :oname
  def initialize(oname, name, funcs)
    @oname = oname
    @name = name
    @funcs = funcs
  end
  def create_typedef
    if (@name != @oname)
      return "typedef " + @oname.gsub("@", " ") + " " + @name + ";\n"
    else
      return ""
    end
  end
  def get_declare(type, typelist)
    name = @name
    if (type == "cov")
      return typelist.collect do |t|
        n = t.name
        [ "#{n} cov_#{name}_#{n}(#{name} x)", "{ return (#{n})x; }" ]
      end
    else
      return case (type)
      when "as"
        [
          [ "#{name} add_#{name}(#{name} a, #{name} b)", "{ return a + b; }" ],
          [ "#{name} sub_#{name}(#{name} a, #{name} b)", "{ return a - b; }" ],
        ]
      when "asi"
        [
          [ "#{name} add_#{name}(#{name} a, int b)", "{ return a + b; }" ],
          [ "int sub_#{name}(#{name} a, #{name} b)", "{ return a - b; }" ],
        ]
      when "md"
        [
          [ "#{name} mul_#{name}(#{name} a, #{name} b)", "{ return a * b; }" ],
          [ "#{name} div_#{name}(#{name} a, #{name} b)", "{ return a / b; }" ],
        ]
      when  "%"
        [
          [ "#{name} mod_#{name}(#{name} a, #{name} b)", "{ return a % b; }" ],
        ]
      when  "cmp"
        [
          [ "bool cmp_lt_#{name}(#{name} a, #{name} b)", "{ return a < b; }" ],
          [ "bool cmp_le_#{name}(#{name} a, #{name} b)", "{ return a <= b; }" ],
          [ "bool cmp_ge_#{name}(#{name} a, #{name} b)", "{ return a >= b; }" ],
          [ "bool cmp_gt_#{name}(#{name} a, #{name} b)", "{ return a > b; }" ],
        ]
      when "equ"
        [
          [ "bool cmp_eq_#{name}(#{name} a, #{name} b)", "{ return a == b; }" ],
          [ "bool cmp_ne_#{name}(#{name} a, #{name} b)", "{ return a != b; }" ],
        ]
      end
    end
  end
  def create_funcs(typelist)
    string = ""
    @funcs.each do |func|
      get_declare(func, typelist).each { |t| string += t[0] + " " + t[1] + "\n" }
    end
    return string
  end
  def create_declares(typelist)
    string = ""
    @funcs.each do |func|
      get_declare(func, typelist).each { |t| string += t[0] + ";\n" }
    end
    return string
  end
end

def create_include(name)
  return "#include <#{name}>\n"
end

def create_local_include(name)
  return "#include \"#{name}\"\n"
end

def create_header(types)
  string = ""
  string += create_include("stdint.h")
  string += create_include("stdbool.h")
  string += "\n"
  types.each do |type|
    string += type.create_typedef
  end
  string += "\n"
  types.each do |type|
    string += type.create_declares(types)
  end
  string += "\n"

  return string
end

def create_source(types)
  string = ""
  string += create_local_include($outputfile_inc)
  string += "\n"
  types.each do |type|
    string += type.create_funcs(types)
  end
  string += "\n"
  
  return string
end

filename = ARGV[0] || "typeinfo.txt"
$outputfile_inc = (ARGV[1] || filename) + ".h"
$outputfile_src = (ARGV[1] || filename) + ".c"
direction = ARGV[2] || "."

# Load Types

types = Array.new

File.open(filename, "r") do |file|
  while line = file.gets
    data = line.split(" ")
    next if data.empty?
    types.push(Type.new(data[0], data[1], data[2, data.size]))
  end
end

# Create

File.open(direction + "/" + $outputfile_inc, "w").print(create_header(types))
File.open(direction + "/" + $outputfile_src, "w").print(create_source(types))
