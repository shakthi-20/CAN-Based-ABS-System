%SLDEMO_ABSBRAKEPLOTS 
%   plots the results from SLDEMO_ABSBRAKE model simulation
%
%   See also SLDEMO_ABSBRAKE, SLDEMO_ABSDATA
%

%   Copyright 1990-2023 The MathWorks, Inc.

if ~exist('sldemo_absbrake_output','var')
    disp('Did not find sldemo_absbrake_output dataset to plot results.');
    disp('Please run simulation on the sldemo_absbrake model.');
elseif isa(sldemo_absbrake_output,'Simulink.SimulationData.Dataset')
    h = findobj(0, 'Name', 'ABS Speeds');
    if isempty(h),
      h=figure('Position',[26   239   452   257],...
               'Name','ABS Speeds',...
               'NumberTitle','off');
    end

    figure(h)
    set(h,'DefaultAxesFontSize',8)

    % data is logged in sldemo_absbrake_output
    % this prevents the main workspace from getting cluttered

    % plot wheel speed and car speed
    plot(sldemo_absbrake_output.get('yout').Values.Vs.Time, ...
         sldemo_absbrake_output.get('yout').Values.Vs.Data, ... 
         sldemo_absbrake_output.get('yout').Values.Ww.Time, ...
         sldemo_absbrake_output.get('yout').Values.Ww.Data);
    legend('Vehicle Speed \omega_v','Wheel Speed \omega_w','Location','best'); 
    title('Vehicle speed and wheel speed'); ylabel('Speed(rad/sec)'); xlabel('Time(sec)');

    h = findobj(0, 'Name', 'ABS Slip');
    if isempty(h),
      h=figure('Position',[486    239   452   257],...
               'Name','ABS Slip',...
               'NumberTitle','off');
    end

    figure(h);
    plot(sldemo_absbrake_output.get('slp').Values.Time, ...
         sldemo_absbrake_output.get('slp').Values.Data);
    title('Slip'); xlabel('Time(sec)'); ylabel('Normalized Relative Slip');

    % plot wheel acceleration

    h = findobj(0, 'Name', 'Wheel Acceleration');
    if isempty(h)
      h=figure('Position',[946    239   452   257],...
               'Name','Wheel Acceleration',...
               'NumberTitle','off');
    end

    figure(h);
    plot(sldemo_absbrake_output.get('Wa').Values.Time, ...
          sldemo_absbrake_output.get('Wa').Values.Data);
     title('Wheel Acceleration'); xlabel('Time(sec)'); ylabel('Acceleration(rad/sec^2)');
end
