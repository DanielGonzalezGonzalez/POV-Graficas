%% Define initial N and points (corners)
n = 7;
last = 2^n + 1;
center = floor(last / 2 + 1);
begin = 1;
mid = floor((begin + last) / 2);
global A;
A = zeros(last);
A(1,1) = 2.0;
A(1,last) = 4.0;
A(center, center) = 60;
A(last,1) = 7.0;
A(last,last) = 5.0;
% mesghrid of X and Y points to later plot the surface
[X,Y] = meshgrid(1:1:last, 1:1:last);

%% Interpolate
interpolate(begin, last, begin, last, 1);
file = fopen("Matrix.txt", "w+");
for i = 1: length(A(:,1))
    for j = 1: length(A(1,:))
        fprintf(file, "%f\t", A(i,j));
    end
    fprintf(file, "\n");
end
fclose(file);

%% Create pov objects

pov = fopen("Mountain.txt", "w+");
result = "#declare mountain = mesh {";
fprintf(pov, "%s\n", result);
for i = 1: length(A(:,1)) - 1
    results = result + ".\n";
    for j = 1: length(A(1,:)) - 1
        %result = result + "triangle{";
        fprintf(pov, "triangle{");
        %result = result + "<" + int2str(j) + "," + num2str(A(i,j)) + "," + int2str(i) + ">, ";
        fprintf(pov, "<%d,%f,%d>, ", j, A(i,j), i);
        %result = result + "<" + int2str(j + 1) + "," + num2str(A(i,j+1)) + "," + int2str(i) + ">, ";
        fprintf(pov, "<%d,%f,%d>, ", j+1, A(i,j+1), i);
        %result = result + "<" + int2str(j) + "," + num2str(A(i+1,j)) + "," + int2str(i+1) + ">, ";
        fprintf(pov, "<%d,%f,%d>}\n", j, A(i+1,j), i+1);
        %result = result + "}\t";
        
        %result = result + "triangle{";
        fprintf(pov, "triangle{");
        %result = result + "<" + int2str(j+1) + "," + num2str(A(i,j+1)) + "," + int2str(i) + ">, ";
        fprintf(pov, "<%d,%f,%d>, ", j+1, A(i,j+1), i);
        %result = result + "<" + int2str(j+1) + "," + num2str(A(i+1,j+1)) + "," + int2str(i+1) + ">, ";
        fprintf(pov, "<%d,%f,%d>, ", j+1, A(i+1,j+1), i+1);
        %result = result + "<" + int2str(j) + "," + num2str(A(i+1,j)) + "," + int2str(i+1) + "> ";
        fprintf(pov, "<%d,%f,%d>}\n", j, A(i+1,j), i+1);
        %result = result + "}";
    end
end  
%result = result + "}";
fprintf(pov, "}");
fclose(pov);


%% plot the surface
clf
surf(X, Y, A);