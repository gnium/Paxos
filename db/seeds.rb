puts "DEFAULT ADMINS"
Admin.find_or_create_by_email email: "agustin@paxos.com",
                              password: "Agu159753",
                              password_confirmation: "Agu159753"

Admin.find_or_create_by_email email: "sebastian@paxos.com",
                              password: "Seba159753",
                              password_confirmation: "Seba159753"

puts "DEFAULT CONCEPTOS"
TipoConcepto.find_or_create_by_nombre nombre: "Debe"
TipoConcepto.find_or_create_by_nombre nombre: "Haber"

puts "DEFAULT TIPOS DE ACTORES"
[ "Clientes", "Contrarios", "Procuradores", "Letrados", "Letrados Contrarios",
  "Jueces", "Secretarios", "Profesionales", "Notarios",
  "Procuradores Contrarios", "Administrativos", "Organos administrativos",
  "Organos judiciales", "Testigos", "Funcionarios", "Peritos",
  "Graduados sociales", "Proveedores"].each do |nombre|

  TipoActor.find_or_create_by_nombre nombre: nombre
end
