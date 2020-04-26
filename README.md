# Jruby compiler test


## Install RVM and use RVM to install ruby. URL: https://rvm.io/rvm/install
```
rvm install jruby
rvm use jruby
which ruby
```

## Add JRUBY_LIB path to your bash environment
export RUBY_BIN_FILE=`which ruby`
echo $RUBY_BIN_FILE
export RUBY_BIN_PATH=`dirname $RUBY_BIN_FILE`
echo $RUBY_BIN_PATH
export RUBY_ROOT=$RUBY_BIN_PATH/..
echo $RUBY_ROOT
export RUBY_LIB=$RUBY_ROOT/lib
echo $RUBY_LIB
echo "export JRUBY_LIB=${RUBY_LIB}" >> ~/.bash_profile 
```

## Create your sample class, like so: sample.rb
```
require "java"

class Sample
  puts 'class load'

  java_signature 'public static void main(String[] args)'
  def self.main args
    puts "ARGS EACH"
    args.each_with_index do |arg, index|
      puts "INDEX: #{index}, ARG: #{arg}"
    end
   # puts 'hello'
  end
end
```

## Now compile to java, and run it.
```
jrubyc --javac sample.rb
java -cp .:$JRUBY_LIB/jruby.jar Sample this is a list of args here
```




