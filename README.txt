mm-money
    by Toni Tuominen
    http://github.com/tjtuom/mm-money

== DESCRIPTION:

Handle money keys with MongoMapper.

== FEATURES/PROBLEMS:

Defines to_mongo and from_mongo methods for the Money gem (http://money.rubyforge.org).
Stores the currency along with the value in the database.

== SYNOPSIS:

class Foo
  key :value, Money
end

== REQUIREMENTS:

The Money gem.

== INSTALL:

gem install mm-money

== LICENSE:

(The MIT License)

Copyright (c) 2010

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
