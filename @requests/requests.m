classdef requests
    %
    %   Class:
    %   requests
    
    %{
        pyargs
    %}
    
    properties
    end
    
    methods (Static)
        function r = delete(url,varargin)
            
        end
        function r = get(url,varargin)
            %
            %   r = requests.get(url,varargin)
            %
            %   Inputs:
            %   -------
            %   url : 
            %
            %   Optional Inputs:
            %   ----------------
            %   data : string
            %       Data to be placed in the body
            %   
            %
            %   Examples:
            %   ---------
            %   r = requests.get('http://www.cnn.com')
            
            %???? How to handle optional inputs?
            %Pass blindly via pyargs?
            
           temp = py.requests.get('http://www.cnn.com');
           r = requests.models.Response(temp);  
        end
        function r = head()
           %NYI 
        end
        function r = patch()
        end
        function r = post(url,varargin)
        end
        function r = put()
        end

    end
    
end

