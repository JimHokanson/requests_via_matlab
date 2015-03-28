classdef Session < handle
    %
    %   Class:
    %   requests.sessions.Session
    
    properties
       h %py.requests.sessions.Session
       
       %TODO: These should be linked to h
%              hooks: [1x1 py.dict]
%            params: [1x1 py.dict]
%              cert: [1x1 py.NoneType]
%     max_redirects: 30
%           headers: [1x1 py.requests.structures.CaseInsensitiveDict]
%          adapters: [1x1 py.requests.packages.urllib3.packages.ordered_dict.OrderedDict]
%         trust_env: 1
%            stream: 0
%           cookies: [1x1 py.requests.cookies.RequestsCookieJar]
%           proxies: [1x1 py.dict]
%              auth: [1x1 py.NoneType]
%            verify: 1      
       
    end
    
    %An example of getting this started
    properties (Dependent)
       max_redirects 
    end
    
    
    
    methods
        function obj = Session(varargin)
           %What can go in here ????
           obj.h = py.requests.session();
        end
        function r = get(obj,url)
           % 
           temp = obj.h.get(url);
           r = requests.models.Response(temp);
        end
    end
    
end

