% Proyecto fin de grado Marcos Crespo Garcia
% Corrector de tono para voz en tiempo real sobre RaspberryPi

classdef main < matlab.System
 
    % Public, non-tunable properties
    properties(Nontunable)
      Fs=16000;       % Frec. de muestreo (Hz)
    end
    
    % Public, tunable properties
    properties
      
    end
    
    %Variables de estado
    properties(DiscreteState)
 
    end
 
    % Variables de estado OCULTAS, NO MODIFICABLES durante la ejecucion.
    properties(Access = private, Nontunable)
      N;              % Tamano del frame de muestras de audio (canales L y R)
    end    
 
    % Pre-computed constants
    properties(Access = private)
 
    end
            
    methods(Access = protected)
        % Se ejecuta una sola vez, al inicio.
        function setupImpl(obj,in)
            % Se utiliza para inicializar variables de estado.
            % in ==> variable para almacenar el frame de entrada
            % obj ==> distintas variables de estado
            
            obj.N=length(in);        % Variable del tamano del frame
        end
 
        %Lazo principal de ejecuci?n (frame a frame)
        function [out, debug] = stepImpl(obj,in)
            % out ==> variable para almacenar el frame de salida
            % debug ==> Array con información relevante 
            % obj ==> distintas variables de estado

            
            
            
            out=in;   % Bypass
            debug=in;
                        
        end
        
        %Inicializa o resetea las variables de estado
        function resetImpl(obj)
            
        end
    end   
end