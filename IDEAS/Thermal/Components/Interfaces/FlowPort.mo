within IDEAS.Thermal.Components.Interfaces;
connector FlowPort "Connector flow port"

  extends Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort;
  annotation (Documentation(info="<HTML>
Basic definition of the connector.<br>
<b>Variables:</b>
<ul>
<li>Pressure p</li>
<li>flow MassFlowRate m_flow</li>
<li>Specific Enthalpy h</li>
<li>flow EnthaplyFlowRate H_flow</li>
</ul>
If ports with different media are connected, the simulation is asserted due to the check of parameter.
</HTML>"));
end FlowPort;
