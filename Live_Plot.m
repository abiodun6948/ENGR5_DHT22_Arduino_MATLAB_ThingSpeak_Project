% --- Configuration ---
port = "COM4";
baud = 9600;
s = serialport(port, baud);
flush(s);

% --- Plot Setup ---
figure('Name','Live DHT22 Data','NumberTitle','off');
tiledlayout(2,1,'TileSpacing','compact');

nexttile(1);
tempLine = animatedline('Color','r','LineWidth',1.5);
ylabel('Temperature (°C)');
grid on;

nexttile(2);
humLine = animatedline('Color','b','LineWidth',1.5);
ylabel('Humidity (%)');
xlabel('Time (s)');
grid on;

startTime = datetime('now');
disp("🔵 Live data stream started... Press Ctrl+C to stop.")

% --- Live Loop ---
while true
    if s.NumBytesAvailable > 0
        try
            line = readline(s);
            data = split(line, ',');
            if numel(data) == 2
                temp = str2double(data(1));
                hum = str2double(data(2));
                tNow = datetime('now') - startTime;
                tSec = seconds(tNow);
                addpoints(tempLine, tSec, temp);
                addpoints(humLine, tSec, hum);
                drawnow limitrate
            end
        catch ME
            warning("Read error: %s", ME.message);
        end
    end
end
