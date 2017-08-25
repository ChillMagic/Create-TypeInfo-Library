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
  def create_funcs(types)
    string = ""
    @funcs.each do |func|
      case func
      when "as"
        string += "#{name} add_#{name}(#{name} a, #{name} b) { return a + b; }\n"
        string += "#{name} sub_#{name}(#{name} a, #{name} b) { return a - b; }\n"
      when "asi"
        string += "#{name} add_#{name}(#{name} a, int b) { return a + b; }\n"
        string += "int sub_#{name}(#{name} a, #{name} b) { return a - b; }\n"
      when "md"
        string += "#{name} mul_#{name}(#{name} a, #{name} b) { return a * b; }\n"
        string += "#{name} div_#{name}(#{name} a, #{name} b) { return a / b; }\n"
      when "%"
        string += "#{name} mod_#{name}(#{name} a, #{name} b) { return a % b; }\n"
      when "cmp"
        string += "bool cmp_l_#{name}(#{name} a, #{name} b) { return a > b; }\n"
        string += "bool cmp_le_#{name}(#{name} a, #{name} b) { return a >= b; }\n"
        string += "bool cmp_s_#{name}(#{name} a, #{name} b) { return a < b; }\n"
        string += "bool cmp_se_#{name}(#{name} a, #{name} b) { return a <= b; }\n"
      when "equ"
        string += "bool cmp_e_#{name}(#{name} a, #{name} b) { return a == b; }\n"
      when "cov"
        types.each do |t|
          n = t.name
          string += "#{n} cov_#{name}_#{n}(#{name} x) { return (#{n})x; }\n"
        end
      end
    end
    return string
  end
end

filename = ARGV[0] || "typeinfo.txt"

types = Array.new

File.open("#{filename}","r") do |file|
  while line  = file.gets
    data = line.split(" ")
    next if data.empty?
    types.push(Type.new(data[0], data[1], data[2, data.size]))
  end
end

def create_include(name)
  return "#include <#{name}>\n"
end

string = ""

string += create_include("stdint.h")
string += create_include("stdbool.h")

string += "\n"

types.each do |type|
  string += type.create_typedef
end

string += "\n"

types.each do |type|
  string += type.create_funcs(types)
end

print(string)
