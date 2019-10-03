# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TodosDb = HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('../seeds.yml', __FILE__))))

projects = TodosDb["projects"]

projects.each do |proj|
    title = proj["title"]
    project = Project.create title: title
    todos = proj["todos"]
    todos.each do |todo|
        curtodo = Todo.create text: todo["text"], isCompleted: todo["isCompleted"]
        project.todos << curtodo
    end
end