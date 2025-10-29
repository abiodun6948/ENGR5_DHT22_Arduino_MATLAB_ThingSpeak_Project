%% --- Serial Port Setup ---
port = "COM4";
baud = 9600;
s = serialport(port, baud);
flush(s);

%% --- ThingSpeak Setup ---
channelID = 3122786; % Replace with your channel ID
writeAPIKey = '1Q7T44KMMGCJF2MC'; % Replace with your Write API Key

%% --- Live Data Loop ---
disp("🔵 Streaming data to ThingSpeak... Press Ctrl+C to stop.")
while true
    if s.NumBytesAvailable > 0
        try
            line = readline(s);
            data = split(line, ',');
            if numel(data) == 2
                temp = str2double(data(1));
                hum = str2double(data(2));
                thingSpeakWrite(channelID, [temp hum], 'Fields', [1 2], 'WriteKey', writeAPIKey);
                fprintf('Sent to ThingSpeak - Temperature: %.2f °C, Humidity: %.2f %%\n', temp, hum);
            end
        catch ME
            warning("Error: %s", ME.message);
        end
    end
    pause(15);
end
