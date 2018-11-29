function maxval = findMax(varargin)
  argnum = length(varargin);
  subMax = [];
  for i = 1:argnum
    subMax = [ subMax max(varargin{i}) ];
  end
  maxval = max(subMax);
end
