//
// Vivado(TM)
// rundef.js: a Vivado-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/SDK/2015.2/bin;D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/Vivado/2015.2/ids_lite/ISE/bin/nt64;D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/Vivado/2015.2/ids_lite/ISE/lib/nt64;D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/Vivado/2015.2/bin;";
} else {
  PathVal = "D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/SDK/2015.2/bin;D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/Vivado/2015.2/ids_lite/ISE/bin/nt64;D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/Vivado/2015.2/ids_lite/ISE/lib/nt64;D:/Xilinx_Vivado_SDK_Win_2015.2_0626_1/Vivado/2015.2/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "vivado",
         "-log Snake_Wrapper.vds -m64 -mode batch -messageDb vivado.pb -notrace -source Snake_Wrapper.tcl" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
