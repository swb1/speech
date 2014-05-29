% random forest

traindata = csvread('age.train');
testdata = csvread('age.test');

numtrees = 20;
b = TreeBagger(numtrees, traindata(:,2:end), traindata(:,1), 'Method', 'classification');
preds = str2double(b.predict(testdata(:,2:end)));
acc = sum(preds == testdata(:,1))/numel(preds);
