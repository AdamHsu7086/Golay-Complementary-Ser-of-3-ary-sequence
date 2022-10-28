clc;
clear all;
close all;



x1 = [0 2 1];
%x1 = [1 0 2];
x1 = exp(1i * 2 * pi * x1 / 3);
x2 = [0 1 2];
x2 = exp(1i * 2 * pi * x2 / 3);
x3 = [0 0 0];
%x3 = [1 1 1];
%x3 = [2 2 2];
x3 = exp(1i * 2 * pi * x3 / 3);

length = 3;
u = 0 : 1 : (length - 1);


for L = 0 : length - 1
    ans1(L + 1) = 0;   
    for i = 1 : (length - L)
        ans1(L + 1) = ans1(L + 1) + x1(i) * conj(x1(i + L)); % an1 = aperiodic of x1
    end
end

subplot(4 , 1 , 1);
stem(u , ans1 , 'b' , 'filled');
axis([0 3 -5 10]);
xlabel('\it{u}');

for L = 0 : length - 1
    ans2(L + 1) = 0;   
    for i = 1 : (length - L)
        ans2(L + 1) = ans2(L + 1) + x2(i) * conj(x2(i + L)); % an2 = aperiodic of x2
    end
end

subplot(4 , 1 , 2);
stem(u , ans2 , 'b' , 'filled');
axis([0 3 -5 10]);
xlabel('\itu');

for L = 0 : length - 1
    ans3(L + 1) = 0;   
    for i = 1 : (length - L)
        ans3(L + 1) = ans3(L + 1) + x3(i) * conj(x3(i + L)); % an3 = aperiodic of x3
    end
end

subplot(4 , 1 , 3);
stem(u , ans3 , 'b' , 'filled');
axis([0 3 -5 10]);
xlabel('\itu');

for L = 0 : length - 1
    ans1(L + 1) = 0;
    ans2(L + 1) = 0;    
    ans3(L + 1) = 0;
    ans4(L + 1) = 0;
    for i = 1 : (length - L)
        ans1(L + 1) = ans1(L + 1) + x1(i) * conj(x1(i + L));
        ans2(L + 1) = ans2(L + 1) + x2(i) * conj(x2(i + L));
        ans3(L + 1) = ans3(L + 1) + x3(i) * conj(x3(i + L));
        ans4(L + 1) = ans1(L + 1) + ans2(L + 1) + ans3(L + 1);
    end
end

subplot(4 , 1 , 4);
stem(u , ans4 , 'b' , 'filled');
axis([0 3 -5 20]);
xlabel('\itu');