classdef PreparedRequest
    %
    %   Class:
    %   requests.models.PreparedRequest
    
    %{
    pr2 = requests.models.PreparedRequest(pr);
    
    %}
    
    %{
        path_url: [1x1 py.str]
         url: [1x1 py.str]
       hooks: [1x1 py.dict]
     headers: [1x1 py.requests.structures.CaseInsensitiveDict]
      method: [1x1 py.str]
        body: [1x1 py.NoneType]
    
    %}
    
    properties
       h 
       path_url
       url
       %hooks
       headers
       method
       %body
    end
    
    methods
        function obj = PreparedRequest(pr)
           obj.h = pr;
            
           obj.path_url = char(pr.path_url);
           obj.url = char(pr.url);
           obj.headers = requests.ml.Headers(pr.headers);
           obj.method = char(pr.method);
        end
    end
    
end

