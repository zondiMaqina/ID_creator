# ID_creator

> [!NOTE]
> The following program is a Ruby based langauage, to get the local version of the Ruby used check out its 
[version](.ruby-version)

## Files Navigation (assets)

1. [Ruby version](.ruby-version)
2. [Gems used](./Gemfile)
3. [Rubocop Confguration](.rubocop.yml)

> [!WARNING]
> Some of the cops in rubocop have been disabled for a reason. DO NOT CHANGE IT

## Project Layout

1. **./main,rb** => root of project
2. **./lib** => directory for parts of program
3. **./lib/color.rb** => adding color to program on terminal
4. **.lib/create_id** => prints layout of id

## Challenges and Development

> This project will help me get familier with using the extension ```RUBY LSP``` and the linter ```rubocop```
> I will be familier with using gems for a program and ```bundler``` to manage those dependencies

> [x] It turns out that you can instantiate an obj in another class
> [x] You can use a class method in another method too
> [x] Calling out a class method instantiates a new object

1. How to use ```super``` method in ruby and what it is for

> It is a keyword used to call a method from the parent class with the same name from the child class
> That parent class method will be envoked if the child class method is called out
> To access installed gems use ```require``` method that fetches it from absolute path

```
class Parent
  def greet
    puts "Hello from Parent"
  end
end

class Child < Parent  # link the two classes
  def say_hello
    super()  # Calling the parent class's greet method
  end
end

child = Child.new
child.say_hello  # call out the child method first
```
