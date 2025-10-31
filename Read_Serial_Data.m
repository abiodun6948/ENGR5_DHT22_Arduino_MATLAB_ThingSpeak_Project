% --- Configuration ---
port = "COM5"; % Update to match your Arduino port
baud = 9600;

% --- Open Serial Connection ---
s = serialport(port, baud);
flush(s);

% --- Read Data Loop ---
for i = 1:20
    line = readline(s);
    data = split(line, ',');
    if numel(data) == 2
        temp = str2double(data(1));
        hum = str2double(data(2));
        fprintf('Temperature: %.2f °C, Humidity: %.2f %%\n', temp, hum);
    end
    pause(2);
end

clear s
