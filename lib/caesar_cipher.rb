

def caesar_cipher(str, shift)  # Définition de la méthode caesar_cipher prenant en entrée une chaîne de caractères et un entier représentant le décalage du chiffrement de César.
    alphabet = ("a".."z").to_a.join  # Création d'une chaîne de caractères contenant toutes les lettres de l'alphabet.
    result = ""  # Initialisation d'une chaîne de caractères vide pour stocker le résultat du chiffrement.
  
    str.each_char do |char|  # Parcours chaque caractère de la chaîne d'entrée.
      if alphabet.include?(char.downcase)  # Vérifie si le caractère est une lettre de l'alphabet.
        original_index = alphabet.index(char.downcase)  # Trouve l'indice du caractère dans l'alphabet.
        shifted_index = (original_index + shift) % 26  # Calcul de l'indice du caractère chiffré en utilisant la formule du chiffrement de César.
        shifted_char = alphabet[shifted_index]  # Trouve le caractère chiffré correspondant à l'indice calculé.
        if char == char.upcase  # Si le caractère original était en majuscule, le caractère chiffré doit aussi être en majuscule.
          shifted_char = shifted_char.upcase
        end
        result += shifted_char  # Ajout du caractère chiffré au résultat.
      else
        result += char  # Si le caractère n'est pas une lettre de l'alphabet, il est ajouté directement au résultat.
      end
    end
  
    return result  # Retourne le résultat du chiffrement.
  end

  puts caesar_cipher("What a string!", 6)