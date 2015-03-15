classdef Headers
    %
    %   Class:
    %   requests.ml.Headers
    %
    %   Prints the keys and values nicely
    %   
    %   Access values via:
    %   h('<name>') %where h is the instance
    %
    %   i.e. h('content-length')
    
    % The internal data implementation is not publicly exposed
    properties (Access = 'protected')
        props = containers.Map;
    end
    
    methods
        function obj = Headers(dict)
            %NOTE: Unlike most dicts we assume that all values
            %will be strings
            temp_values = cellfun(@char,cell(values(dict)),'un',0);
            key_names   = cellfun(@char,cell(keys(dict)),'un',0);
           obj.props = containers.Map(key_names,temp_values);
        end
    end
    methods (Access = 'public', Hidden=true)
 
        % Overload property assignment
        function obj = subsasgn(obj, subStruct, value)
            if strcmp(subStruct.type,'()')
                try
                    obj.props(subStruct.subs{1}) = value;
                catch
                    error('Could not assign "%s" property value', subStruct.subs);
                end
            else  % '.' or '{}'
                error('not supported');
            end
        end
 
        % Overload property retrieval (referencing)
        function value = subsref(obj, subStruct)
            if strcmp(subStruct.type,'()')
                try
                    value = obj.props(subStruct.subs{1});
                catch
                    error('"%s" is not defined as a property', subStruct.subs);
                end
            else  % '.' or '{}'
                error('not supported');
            end
        end
% Overload property names retrieval
        function names = fieldnames(obj)
            names = sort(obj.props.keys);
        end
        function names = properties(obj)
            names = fieldnames(obj);
        end
                % Overload class object display
        function disp(obj)
            disp([obj.props.keys', obj.props.values']);  % display as a cell-array
        end
    end
end

