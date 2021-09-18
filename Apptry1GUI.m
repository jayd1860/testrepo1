function varargout = Apptry1GUI(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Apptry1GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Apptry1GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


% ---------------------------------------------------------------------
function Apptry1GUI_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
setNamespace('Apptry1GUI');
set(handles.figure1, 'name', sprintf('%s - %s', get(handles.figure1, 'name'), getAppDir()));


% --------------------------------------------------------------------
function varargout = Apptry1GUI_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --------------------------------------------------------------------
function pushbuttonID_Callback(hObject, eventdata, handles)
set(handles.editID, 'string', num2str(func11(16)));


% --------------------------------------------------------------------
function editID_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function figure1_CloseRequestFcn(hObject, eventdata, handles)
delete(hObject);
deleteNamespace('Apptry1GUI');


% --------------------------------------------------------------------
function figure1_DeleteFcn(hObject, eventdata, handles)
deleteNamespace('Apptry1GUI');

