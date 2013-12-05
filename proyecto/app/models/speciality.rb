class Speciality
	NAMES = {
    "MG"  => "Medico General",
    "MI"  => "Medico Internista",
    "MP"  => "Medico Pediatra",
  }
  
  def self.all
    NAMES.map{|abbr, name| name }
  end
end