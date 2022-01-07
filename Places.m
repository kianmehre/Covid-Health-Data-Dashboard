classdef Places < handle
    % Class definition to be able to store global, country, and state data
    properties (Access = public)
        Country
        Region
        CovidCases
        DeathCases
    end

    methods
        function obj = Places(count,region,cases)
            % setting country or state name to string
            if nargin < 3, cases = []; end
            obj.Country = string(count);
            obj.Region = string(region);
            obj.Region(obj.Region == "") = "All";
            for ii = 1:size(cases,1)
                for jj = 1:size(cases,2)
                    obj.CovidCases(ii,jj) = cases{ii,jj}(1);
                    obj.DeathCases(ii,jj) = cases{ii,jj}(2);
                end
            end
        end
    end
end