function [ OUT ] = f1( IN )
%F1 Summary of this function goes here
%   Detailed explanation goes here
pingfang=0;
for i = [1:length(IN)]
pingfang = pingfang +power((IN(i)-mean(IN)),2);
end
OUT = sqrt(pingfang/length(IN)/(length(IN)-1));
end

