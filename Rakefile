require "time"

task :hello do
    puts "Hello"   
end

task :hello_name, [:name] do |task, args|
    puts "Hello " + args[:name]
end

task :specs, [:tags, :browser] do |task, args|
    time = Time.now.utc.iso8601.tr(":", "") #tr(":", "") significa que o ruby vai substituir os : que tem no horário por nada
    report = "--format html --out=log/report_#{time}.html"
    sh "cucumber #{args[:tags]} #{report} #{args[:browser]}" #comando shell script para rodar o cucumber
end