سوال 5

clc;
clear;
close all;

% زمان تعریف شده
time = linspace(0, 5, 5001);

% تابع تبدیل سیستم
numerator = [5, 10];
denominator = [1, 4, 5];
system = tf(numerator, denominator);

% محاسبه صفرها و قطب‌های سیستم
zeros_sys = roots(numerator);
poles_sys = roots(denominator);

% پاسخ پله
response = step(system, time);

% اطلاعات پاسخ پله
response_info = stepinfo(response, time);

% رسم نمودار پاسخ پله
figure;
plot(time, response, 'r', 'LineWidth', 1.5);
title('Step Response of the System');
xlabel('Time (seconds)');
ylabel('Step Response');
grid on;

% نمایش اطلاعات روی نمودار
rise_time_text = sprintf('Rise Time: %.2f s', response_info.RiseTime);
overshoot_text = sprintf('Overshoot: %.2f%%', response_info.Overshoot);
peak_text = sprintf('Peak: %.2f', response_info.Peak);

text(response_info.RiseTime, response_info.RiseTime, rise_time_text, 'Color', 'red');
text(response_info.Overshoot, max(response)*0.9, overshoot_text, 'Color', 'magenta');
text(response_info.Peak, response_info.Peak, peak_text, 'Color', 'blue');

% نمایش اطلاعات در پنجره Command Window
disp(response_info);
