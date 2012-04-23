within IDEAS.Interfaces;
partial model InhomeFeeder

  parameter Integer nHeatingLoads(min=1)
    "number of electric loads for the heating system";
  parameter Integer nVentilationLoads(min=1)
    "number of electric loads for the ventilation system";
  parameter Integer nOccupantLoads(min=1)
    "number of electric loads for the occupants";

  outer IDEAS.Climate.SimInfoManager sim
    "Simulation information manager for climate data" annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
  Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin plugFeeder
    "Electricity connection to the district feeder" annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin[nVentilationLoads] pinVentilationLoad
    "Electricity connection for the ventilaiton system" annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin[nHeatingLoads] pinHeatingLoad
    "Electricity connection for the heating system" annotation (Placement(transformation(extent={{-110,30},{-90,50}})));
  Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin[nOccupantLoads] pinOccupantLoad
    "Electricity connection for the occupants" annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
  annotation(Icon(graphics={
        Rectangle(
          extent={{28,60},{70,20}},
          lineColor={127,0,0},
          fillColor={127,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-26,54},{-26,20},{-6,20},{-6,28},{4,28},{4,32},{-6,32},{-6,44},
              {8,44},{8,50},{-6,50},{-6,54},{-26,54}},
          lineColor={127,0,0},
          smooth=Smooth.None,
          fillColor={127,0,0},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-14,20},{-14,0},{-94,0}},
          color={127,0,0},
          smooth=Smooth.None),
        Rectangle(
          extent={{46,50},{50,42}},
          lineColor={127,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{56,34},{60,26}},
          lineColor={127,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{38,34},{42,26}},
          lineColor={127,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{48,20},{48,0},{96,0}},
          color={127,0,0},
          smooth=Smooth.None)}),                                    Diagram(
        graphics));

end InhomeFeeder;