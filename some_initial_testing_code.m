%Setup of PyUse:

%{
TODO: Move to Python setup installation page
pyversion(executable_path) 
to specify the path to the Python executable.

In Python you can run:

import sys
print(sys.executable)thon

%}

%For testing:
%-------------
%http://requestb.in/


%http://www.whatarecookies.com/cookietest.asp



s = py.requests.session();

sm = requests.session();
r = sm.get('http://www.cnn.com');


%http://www.html-kit.com/tools/cookietester/
cookie_url = 'http://www.whatarecookies.com/cookietest.asp';
temp1 = s.get(cookie_url);
pause(10)
temp2 = s.get(cookie_url);


%doc_obj = jsoup.getDoc(char(temp.text),cookie_url);



test = py.requests.get('http://www.cnn.com');

url = 'http://requestb.in/1czsjjd1';

wtf = py.requests.delete(url,pyargs('data','This will not work'));


r = requests.models.Response(test);
