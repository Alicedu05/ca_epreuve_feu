#Echauffement

#Créez un programme qui affiche un rectangle dans le terminal.
#Exemples d’utilisation :
#$> python exo.py 5 3
#o---o
#|   |
#o---o
#$> python exo.py 5 1
#o---o
#$> python exo.py 1 1
#o
#Gérer les problèmes potentiels d’arguments.

#FONCTION
def rectangle_bulder(column, row)
    midle_number = column - 2
    row_number = row - 2
    rectangle = []
    row_midle = []
    corner = "O"
    join = "-"
    wall = "|"
    above_below =[]
    line = []

        if column < 2 || column == 1
            rectangle << corner
            
        elsif row < 2
            above_below << corner << join * midle_number << corner << "\n"
            line << wall << " " * midle_number << wall<< "\n"
            rectangle << above_below.join("") 

        else
            above_below << corner << join * midle_number << corner << "\n"
            line << wall << " " * midle_number << wall<< "\n"
            row_midle << line.join("") * row_number
            rectangle << above_below.join("") << row_midle << above_below.join("")
        end
        return rectangle
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 2
abort("error") if ARGV.empty?
abort("error") if ARGV.any? { |arg| arg =~ /[a-zA-Z]/ }
abort("error") if File.extname(ARGV[0]) == ".txt"
abort("error") if ARGV.any? { |arg| arg =~ /^-/ }


#PARSING
column_number = ARGV[0].to_i
row_number = ARGV[1].to_i

#RESOLUTION
rectangle = rectangle_bulder(column_number, row_number)

#AFFICHAGE
puts rectangle