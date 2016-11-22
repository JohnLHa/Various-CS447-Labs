<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<project source="2.7.1" version="1.0">
This file is intended to be loaded by Logisim (http://www.cburch.com/logisim/).
<lib desc="#Wiring" name="0"/>
  <lib desc="#Gates" name="1"/>
  <lib desc="#Plexers" name="2"/>
  <lib desc="#Arithmetic" name="3"/>
  <lib desc="#Memory" name="4"/>
  <lib desc="#I/O" name="5"/>
  <lib desc="#Base" name="6">
    <tool name="Text Tool">
      <a name="text" val=""/>
      <a name="font" val="SansSerif plain 12"/>
      <a name="halign" val="center"/>
      <a name="valign" val="base"/>
    </tool>
  </lib>
  <main name="main"/>
  <options>
    <a name="gateUndefined" val="ignore"/>
    <a name="simlimit" val="1000"/>
    <a name="simrand" val="0"/>
  </options>
  <mappings>
    <tool lib="6" map="Button2" name="Menu Tool"/>
    <tool lib="6" map="Button3" name="Menu Tool"/>
    <tool lib="6" map="Ctrl Button1" name="Menu Tool"/>
  </mappings>
  <toolbar>
    <tool lib="6" name="Poke Tool"/>
    <tool lib="6" name="Edit Tool"/>
    <tool lib="6" name="Text Tool">
      <a name="text" val=""/>
      <a name="font" val="SansSerif plain 12"/>
      <a name="halign" val="center"/>
      <a name="valign" val="base"/>
    </tool>
    <sep/>
    <tool lib="0" name="Pin">
      <a name="tristate" val="false"/>
    </tool>
    <tool lib="0" name="Pin">
      <a name="facing" val="west"/>
      <a name="output" val="true"/>
      <a name="labelloc" val="east"/>
    </tool>
    <tool lib="1" name="NOT Gate"/>
    <tool lib="1" name="AND Gate"/>
    <tool lib="1" name="OR Gate"/>
  </toolbar>
  <circuit name="main">
    <a name="circuit" val="main"/>
    <a name="clabel" val=""/>
    <a name="clabelup" val="east"/>
    <a name="clabelfont" val="SansSerif plain 12"/>
  </circuit>
  <circuit name="lab09part1-jlh238">
    <a name="circuit" val="lab09part1-jlh238"/>
    <a name="clabel" val=""/>
    <a name="clabelup" val="east"/>
    <a name="clabelfont" val="SansSerif plain 12"/>
    <wire from="(40,130)" to="(100,130)"/>
    <wire from="(260,30)" to="(260,100)"/>
    <wire from="(80,80)" to="(140,80)"/>
    <wire from="(180,40)" to="(180,50)"/>
    <wire from="(180,100)" to="(180,110)"/>
    <wire from="(80,140)" to="(200,140)"/>
    <wire from="(60,20)" to="(60,30)"/>
    <wire from="(100,50)" to="(100,130)"/>
    <wire from="(100,130)" to="(100,210)"/>
    <wire from="(120,160)" to="(120,180)"/>
    <wire from="(250,90)" to="(250,110)"/>
    <wire from="(250,130)" to="(250,150)"/>
    <wire from="(40,80)" to="(80,80)"/>
    <wire from="(100,50)" to="(140,50)"/>
    <wire from="(160,20)" to="(200,20)"/>
    <wire from="(160,80)" to="(200,80)"/>
    <wire from="(100,210)" to="(200,210)"/>
    <wire from="(60,30)" to="(60,190)"/>
    <wire from="(230,30)" to="(260,30)"/>
    <wire from="(250,110)" to="(280,110)"/>
    <wire from="(250,130)" to="(280,130)"/>
    <wire from="(230,200)" to="(260,200)"/>
    <wire from="(310,120)" to="(330,120)"/>
    <wire from="(260,140)" to="(280,140)"/>
    <wire from="(40,30)" to="(60,30)"/>
    <wire from="(120,110)" to="(140,110)"/>
    <wire from="(160,50)" to="(180,50)"/>
    <wire from="(160,110)" to="(180,110)"/>
    <wire from="(180,40)" to="(200,40)"/>
    <wire from="(180,100)" to="(200,100)"/>
    <wire from="(260,100)" to="(280,100)"/>
    <wire from="(230,90)" to="(250,90)"/>
    <wire from="(230,150)" to="(250,150)"/>
    <wire from="(60,20)" to="(140,20)"/>
    <wire from="(40,180)" to="(120,180)"/>
    <wire from="(120,160)" to="(200,160)"/>
    <wire from="(120,110)" to="(120,160)"/>
    <wire from="(60,190)" to="(200,190)"/>
    <wire from="(260,140)" to="(260,200)"/>
    <wire from="(80,80)" to="(80,140)"/>
    <comp lib="1" loc="(230,90)" name="AND Gate">
      <a name="size" val="30"/>
      <a name="inputs" val="2"/>
    </comp>
    <comp lib="0" loc="(40,130)" name="Pin">
      <a name="tristate" val="false"/>
      <a name="label" val="B1"/>
      <a name="labelloc" val="north"/>
    </comp>
    <comp lib="1" loc="(230,200)" name="AND Gate">
      <a name="size" val="30"/>
      <a name="inputs" val="2"/>
    </comp>
    <comp lib="0" loc="(40,80)" name="Pin">
      <a name="tristate" val="false"/>
      <a name="label" val="A0"/>
      <a name="labelloc" val="north"/>
    </comp>
    <comp lib="0" loc="(40,180)" name="Pin">
      <a name="tristate" val="false"/>
      <a name="label" val="B0"/>
      <a name="labelloc" val="north"/>
    </comp>
    <comp lib="1" loc="(160,20)" name="NOT Gate">
      <a name="size" val="20"/>
    </comp>
    <comp lib="1" loc="(160,80)" name="NOT Gate">
      <a name="size" val="20"/>
    </comp>
    <comp lib="1" loc="(230,150)" name="AND Gate">
      <a name="size" val="30"/>
      <a name="inputs" val="2"/>
    </comp>
    <comp lib="0" loc="(330,120)" name="Pin">
      <a name="facing" val="west"/>
      <a name="output" val="true"/>
      <a name="label" val="Y"/>
      <a name="labelloc" val="north"/>
    </comp>
    <comp lib="1" loc="(160,110)" name="NOT Gate">
      <a name="size" val="20"/>
    </comp>
    <comp lib="1" loc="(310,120)" name="OR Gate">
      <a name="size" val="30"/>
      <a name="inputs" val="4"/>
    </comp>
    <comp lib="1" loc="(160,50)" name="NOT Gate">
      <a name="size" val="20"/>
    </comp>
    <comp lib="1" loc="(230,30)" name="AND Gate">
      <a name="size" val="30"/>
      <a name="inputs" val="2"/>
    </comp>
    <comp lib="0" loc="(40,30)" name="Pin">
      <a name="tristate" val="false"/>
      <a name="label" val="A1"/>
      <a name="labelloc" val="north"/>
    </comp>
  </circuit>
</project>
