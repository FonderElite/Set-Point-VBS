Function Function_Trigger(ByVal Item)
Dim temp
Set temp = HMIRuntime.Tags("Setpoint_Speed")
temp.Read
If temp.Value > 90 && temp.Value < 180 Then
HMIRuntime.Trace "Set point's value is greater than 90 but less than 180" & vbCrLf
Function_Trigger = RGB(255,180,295)
Else
Function_Trigger = RGB(255,0,0)
End If
End Function
