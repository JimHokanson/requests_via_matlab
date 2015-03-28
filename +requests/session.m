function s = session(varargin)
%
%   requests.session
%
%   This is a shortcut to requests.sessions.Session

%TODO: Find options and pass the

s = requests.sessions.Session(varargin{:});