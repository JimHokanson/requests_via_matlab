classdef Response
    %
    %   Class:
    %   requests.models.Response

    %{
apparent_encoding: [1x5 py.str]
          content: [1x238140 py.str]
            links: [1x1 py.dict]
               ok: 1
             text: [1x238124 py.unicode]
         encoding: [1x5 py.str]
           reason: [1x2 py.str]
          request: [1x1 py.requests.models.PreparedRequest]
              raw: [1x1 py.requests.packages.urllib3.response.HTTPResponse]
      status_code: 200
          elapsed: [1x1 py.datetime.timedelta]
              url: [1x19 py.unicode]
          headers: [1x1 py.requests.structures.CaseInsensitiveDict]
       connection: [1x1 py.requests.adapters.HTTPAdapter]
          cookies: [1x1 py.requests.cookies.RequestsCookieJar]
          history: [1x0 py.list]
    %}
    
    
    properties (Hidden)
       h %py.requests.models.Response
    end
    properties
       apparent_encoding %string
       links %dict
       %? What are links?
       ok %number
       encoding %string
       reason %string
       request %py.requests.models.PreparedRequest
       raw %py.requests.packages.urllib3.response.HTTPResponse
       status_code
       elapsed %py.datetime.timedelta
       url %unicode
       headers %py.requests.structures.CaseInsensitiveDict
       connection %py.requests.adapters.HTTPAdapter
       cookies %py.requests.cookies.RequestsCookieJar
       history %py.list 
    end
    
    properties (Dependent)
        %?? What is the difference between content and text?
       content %string
       text %string
       %TODO: Load these lazily
    end
    
    methods
        function obj = Response(r)
           %
           %    Inputs:
           %    -------
           %    r : py.requests.models.Response
           obj.h = r;
           
           obj.apparent_encoding  = char(r.apparent_encoding);
           %obj.links %
           obj.reason = char(r.reason);
           obj.status_code = r.status_code;
           %obj.elapsed = r.elapsed
           obj.url = char(r.url);
           obj.headers = requests.ml.Headers(r.headers);
        end
    end
    
end

