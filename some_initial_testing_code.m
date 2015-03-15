%Setup of PyUse:

%{
TODO: Move to Python setup installation page
pyversion(executable_path) 
to specify the path to the Python executable.

In Python you can run:

import sys
print(sys.executable)thon

%}



test = py.requests.get('http://www.cnn.com');


r = requests.models.Response(test);
%test - Response

%Working with a dict, make function that returns a struct or map?
headers = test.headers;

wtf = requests.ml.Headers(test.headers);

%TODO: Let's implement invalid name setting in struct using mex

values = cell(values(headers));

%Seems to be an error in the parser
key_names   = cellfun(@char,cell(keys(headers)),'un',0);

values = cellfun(@char,values,'un',0);

%NOTE: For headers, the values will all be strings

