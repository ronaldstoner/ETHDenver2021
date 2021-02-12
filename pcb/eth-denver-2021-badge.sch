<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="amd-mach" urn="urn:adsk.eagle:library:99">
<description>&lt;b&gt;AMD MACH4/MACH5 Family (Vantis)&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="PLCC44" urn="urn:adsk.eagle:footprint:3584/1" library_version="1">
<description>&lt;b&gt;PLASTIC LEADED CHIP CARRIER&lt;/b&gt;</description>
<wire x1="8.7" y1="8.7" x2="-6.465" y2="8.7" width="0.2032" layer="51"/>
<wire x1="-8.7" y1="6.465" x2="-8.7" y2="-8.7" width="0.2032" layer="51"/>
<wire x1="-8.7" y1="-8.7" x2="8.7" y2="-8.7" width="0.2032" layer="51"/>
<wire x1="8.7" y1="-8.7" x2="8.7" y2="8.7" width="0.2032" layer="51"/>
<wire x1="-6.465" y1="8.7" x2="-8.7" y2="6.465" width="0.2032" layer="51"/>
<wire x1="-8.255" y1="6.909" x2="-6.909" y2="8.255" width="0.2032" layer="21"/>
<wire x1="-8.687" y1="-6.909" x2="-8.687" y2="-8.687" width="0.2032" layer="21"/>
<wire x1="-8.687" y1="-8.687" x2="-6.883" y2="-8.687" width="0.2032" layer="21"/>
<wire x1="6.883" y1="-8.687" x2="8.687" y2="-8.687" width="0.2032" layer="21"/>
<wire x1="8.687" y1="-8.687" x2="8.687" y2="-6.909" width="0.2032" layer="21"/>
<wire x1="8.687" y1="6.858" x2="8.687" y2="8.687" width="0.2032" layer="21"/>
<wire x1="8.687" y1="8.687" x2="6.934" y2="8.687" width="0.2032" layer="21"/>
<circle x="0" y="6.3299" radius="0.3" width="0.6096" layer="21"/>
<smd name="1" x="0" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="2" x="-1.27" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="-2.54" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="-3.81" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="-5.08" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="-6.35" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-8.1" y="6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="8" x="-8.1" y="5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="9" x="-8.1" y="3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="10" x="-8.1" y="2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="11" x="-8.1" y="1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="12" x="-8.1" y="0" dx="2.2" dy="0.6" layer="1"/>
<smd name="13" x="-8.1" y="-1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="14" x="-8.1" y="-2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="15" x="-8.1" y="-3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="16" x="-8.1" y="-5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="17" x="-8.1" y="-6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="18" x="-6.35" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="19" x="-5.08" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="20" x="-3.81" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="21" x="-2.54" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="22" x="-1.27" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="23" x="0" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="24" x="1.27" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="25" x="2.54" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="26" x="3.81" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="27" x="5.08" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="28" x="6.35" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="29" x="8.1" y="-6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="30" x="8.1" y="-5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="31" x="8.1" y="-3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="32" x="8.1" y="-2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="33" x="8.1" y="-1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="34" x="8.1" y="0" dx="2.2" dy="0.6" layer="1"/>
<smd name="35" x="8.1" y="1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="36" x="8.1" y="2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="37" x="8.1" y="3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="38" x="8.1" y="5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="39" x="8.1" y="6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="40" x="6.35" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="41" x="5.08" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="42" x="3.81" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="43" x="2.54" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="44" x="1.27" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<text x="-6.38" y="9.525" size="1.778" layer="25">&gt;NAME</text>
<text x="-5.08" y="-2.4051" size="1.778" layer="27">&gt;VALUE</text>
<text x="-4.0551" y="0.46" size="0.6096" layer="51">PLCC-44</text>
<rectangle x1="-0.2601" y1="8.75" x2="0.2601" y2="9.1999" layer="51"/>
<rectangle x1="-1.5301" y1="8.75" x2="-1.0099" y2="9.1999" layer="51"/>
<rectangle x1="-2.8001" y1="8.75" x2="-2.2799" y2="9.1999" layer="51"/>
<rectangle x1="-4.0701" y1="8.75" x2="-3.5499" y2="9.1999" layer="51"/>
<rectangle x1="-5.3401" y1="8.75" x2="-4.8199" y2="9.1999" layer="51"/>
<rectangle x1="-6.6101" y1="8.75" x2="-6.0899" y2="9.1999" layer="51"/>
<rectangle x1="-9.1999" y1="6.0899" x2="-8.75" y2="6.6101" layer="51"/>
<rectangle x1="-9.1999" y1="4.8199" x2="-8.75" y2="5.3401" layer="51"/>
<rectangle x1="-9.1999" y1="3.5499" x2="-8.75" y2="4.0701" layer="51"/>
<rectangle x1="-9.1999" y1="2.2799" x2="-8.75" y2="2.8001" layer="51"/>
<rectangle x1="-9.1999" y1="1.0099" x2="-8.75" y2="1.5301" layer="51"/>
<rectangle x1="-9.1999" y1="-0.2601" x2="-8.75" y2="0.2601" layer="51"/>
<rectangle x1="-9.1999" y1="-1.5301" x2="-8.75" y2="-1.0099" layer="51"/>
<rectangle x1="-9.1999" y1="-2.8001" x2="-8.75" y2="-2.2799" layer="51"/>
<rectangle x1="-9.1999" y1="-4.0701" x2="-8.75" y2="-3.5499" layer="51"/>
<rectangle x1="-9.1999" y1="-5.3401" x2="-8.75" y2="-4.8199" layer="51"/>
<rectangle x1="-9.1999" y1="-6.6101" x2="-8.75" y2="-6.0899" layer="51"/>
<rectangle x1="-6.6101" y1="-9.1999" x2="-6.0899" y2="-8.75" layer="51"/>
<rectangle x1="-5.3401" y1="-9.1999" x2="-4.8199" y2="-8.75" layer="51"/>
<rectangle x1="-4.0701" y1="-9.1999" x2="-3.5499" y2="-8.75" layer="51"/>
<rectangle x1="-2.8001" y1="-9.1999" x2="-2.2799" y2="-8.75" layer="51"/>
<rectangle x1="-1.5301" y1="-9.1999" x2="-1.0099" y2="-8.75" layer="51"/>
<rectangle x1="-0.2601" y1="-9.1999" x2="0.2601" y2="-8.75" layer="51"/>
<rectangle x1="1.0099" y1="-9.1999" x2="1.5301" y2="-8.75" layer="51"/>
<rectangle x1="2.2799" y1="-9.1999" x2="2.8001" y2="-8.75" layer="51"/>
<rectangle x1="3.5499" y1="-9.1999" x2="4.0701" y2="-8.75" layer="51"/>
<rectangle x1="4.8199" y1="-9.1999" x2="5.3401" y2="-8.75" layer="51"/>
<rectangle x1="6.0899" y1="-9.1999" x2="6.6101" y2="-8.75" layer="51"/>
<rectangle x1="8.75" y1="-6.6101" x2="9.1999" y2="-6.0899" layer="51"/>
<rectangle x1="8.75" y1="-5.3401" x2="9.1999" y2="-4.8199" layer="51"/>
<rectangle x1="8.75" y1="-4.0701" x2="9.1999" y2="-3.5499" layer="51"/>
<rectangle x1="8.75" y1="-2.8001" x2="9.1999" y2="-2.2799" layer="51"/>
<rectangle x1="8.75" y1="-1.5301" x2="9.1999" y2="-1.0099" layer="51"/>
<rectangle x1="8.75" y1="-0.2601" x2="9.1999" y2="0.2601" layer="51"/>
<rectangle x1="8.75" y1="1.0099" x2="9.1999" y2="1.5301" layer="51"/>
<rectangle x1="8.75" y1="2.2799" x2="9.1999" y2="2.8001" layer="51"/>
<rectangle x1="8.75" y1="3.5499" x2="9.1999" y2="4.0701" layer="51"/>
<rectangle x1="8.75" y1="4.8199" x2="9.1999" y2="5.3401" layer="51"/>
<rectangle x1="8.75" y1="6.0899" x2="9.1999" y2="6.6101" layer="51"/>
<rectangle x1="6.0899" y1="8.75" x2="6.6101" y2="9.1999" layer="51"/>
<rectangle x1="4.8199" y1="8.75" x2="5.3401" y2="9.1999" layer="51"/>
<rectangle x1="3.5499" y1="8.75" x2="4.0701" y2="9.1999" layer="51"/>
<rectangle x1="2.2799" y1="8.75" x2="2.8001" y2="9.1999" layer="51"/>
<rectangle x1="1.0099" y1="8.75" x2="1.5301" y2="9.1999" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="PLCC44" urn="urn:adsk.eagle:package:3639/1" type="box" library_version="1">
<description>PLASTIC LEADED CHIP CARRIER</description>
<packageinstances>
<packageinstance name="PLCC44"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="M4-32-44" urn="urn:adsk.eagle:symbol:3583/1" library_version="1">
<wire x1="-22.86" y1="22.86" x2="-22.86" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-22.86" x2="22.86" y2="-22.86" width="0.254" layer="94"/>
<wire x1="22.86" y1="-22.86" x2="22.86" y2="22.86" width="0.254" layer="94"/>
<wire x1="22.86" y1="22.86" x2="-22.86" y2="22.86" width="0.254" layer="94"/>
<text x="-5.08" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-20.574" y="-0.762" size="1.524" layer="95">GND</text>
<text x="0.762" y="-20.574" size="1.524" layer="95" rot="R90">GND</text>
<text x="20.32" y="0.762" size="1.524" layer="95" rot="R180">GND</text>
<text x="-0.762" y="20.32" size="1.524" layer="95" rot="R270">GND</text>
<text x="1.778" y="20.32" size="1.524" layer="95" rot="R270">VCC</text>
<text x="-1.778" y="-20.574" size="1.524" layer="95" rot="R90">VCC</text>
<pin name="CLK0/I0" x="-25.4" y="2.54" length="short" direction="in"/>
<pin name="CLK1/I1" x="25.4" y="-2.54" length="short" direction="in" rot="R180"/>
<pin name="TDI" x="-25.4" y="5.08" length="short" direction="in"/>
<pin name="TCK" x="-25.4" y="-2.54" length="short" direction="in"/>
<pin name="TMS" x="25.4" y="-5.08" length="short" direction="in" rot="R180"/>
<pin name="TDO" x="25.4" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="IO0" x="-2.54" y="25.4" length="short" rot="R270"/>
<pin name="IO1" x="-5.08" y="25.4" length="short" rot="R270"/>
<pin name="IO2" x="-7.62" y="25.4" length="short" rot="R270"/>
<pin name="IO3" x="-10.16" y="25.4" length="short" rot="R270"/>
<pin name="IO4" x="-12.7" y="25.4" length="short" rot="R270"/>
<pin name="IO5" x="-25.4" y="12.7" length="short"/>
<pin name="IO6" x="-25.4" y="10.16" length="short"/>
<pin name="IO7" x="-25.4" y="7.62" length="short"/>
<pin name="IO8" x="-25.4" y="-5.08" length="short"/>
<pin name="IO9" x="-25.4" y="-7.62" length="short"/>
<pin name="IO10" x="-25.4" y="-10.16" length="short"/>
<pin name="IO11" x="-25.4" y="-12.7" length="short"/>
<pin name="IO12" x="-12.7" y="-25.4" length="short" rot="R90"/>
<pin name="IO13" x="-10.16" y="-25.4" length="short" rot="R90"/>
<pin name="IO14" x="-7.62" y="-25.4" length="short" rot="R90"/>
<pin name="IO15" x="-5.08" y="-25.4" length="short" rot="R90"/>
<pin name="IO16" x="2.54" y="-25.4" length="short" rot="R90"/>
<pin name="IO17" x="5.08" y="-25.4" length="short" rot="R90"/>
<pin name="IO18" x="7.62" y="-25.4" length="short" rot="R90"/>
<pin name="IO19" x="10.16" y="-25.4" length="short" rot="R90"/>
<pin name="IO20" x="12.7" y="-25.4" length="short" rot="R90"/>
<pin name="IO21" x="25.4" y="-12.7" length="short" rot="R180"/>
<pin name="IO22" x="25.4" y="-10.16" length="short" rot="R180"/>
<pin name="IO23" x="25.4" y="-7.62" length="short" rot="R180"/>
<pin name="IO24" x="25.4" y="5.08" length="short" rot="R180"/>
<pin name="IO25" x="25.4" y="7.62" length="short" rot="R180"/>
<pin name="IO26" x="25.4" y="10.16" length="short" rot="R180"/>
<pin name="IO27" x="25.4" y="12.7" length="short" rot="R180"/>
<pin name="IO28" x="12.7" y="25.4" length="short" rot="R270"/>
<pin name="IO29" x="10.16" y="25.4" length="short" rot="R270"/>
<pin name="IO30" x="7.62" y="25.4" length="short" rot="R270"/>
<pin name="IO31" x="5.08" y="25.4" length="short" rot="R270"/>
<pin name="GND@1" x="0" y="25.4" visible="pad" length="short" direction="pwr" swaplevel="1" rot="R270"/>
<pin name="GND@2" x="-25.4" y="0" visible="pad" length="short" direction="pwr" swaplevel="1"/>
<pin name="GND@3" x="0" y="-25.4" visible="pad" length="short" direction="pwr" swaplevel="1" rot="R90"/>
<pin name="GND@4" x="25.4" y="0" visible="pad" length="short" direction="pwr" swaplevel="1" rot="R180"/>
<pin name="VCC@1" x="-2.54" y="-25.4" visible="pad" length="short" direction="pwr" swaplevel="1" rot="R90"/>
<pin name="VCC@2" x="2.54" y="25.4" visible="pad" length="short" direction="pwr" swaplevel="1" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M4-32-P44" urn="urn:adsk.eagle:component:3655/1" prefix="IC" uservalue="yes" library_version="1">
<description>&lt;b&gt;AMD MACH SERIES&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="M4-32-44" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PLCC44">
<connects>
<connect gate="G$1" pin="CLK0/I0" pad="11"/>
<connect gate="G$1" pin="CLK1/I1" pad="33"/>
<connect gate="G$1" pin="GND@1" pad="1"/>
<connect gate="G$1" pin="GND@2" pad="12"/>
<connect gate="G$1" pin="GND@3" pad="23"/>
<connect gate="G$1" pin="GND@4" pad="34"/>
<connect gate="G$1" pin="IO0" pad="2"/>
<connect gate="G$1" pin="IO1" pad="3"/>
<connect gate="G$1" pin="IO10" pad="16"/>
<connect gate="G$1" pin="IO11" pad="17"/>
<connect gate="G$1" pin="IO12" pad="18"/>
<connect gate="G$1" pin="IO13" pad="19"/>
<connect gate="G$1" pin="IO14" pad="20"/>
<connect gate="G$1" pin="IO15" pad="21"/>
<connect gate="G$1" pin="IO16" pad="24"/>
<connect gate="G$1" pin="IO17" pad="25"/>
<connect gate="G$1" pin="IO18" pad="26"/>
<connect gate="G$1" pin="IO19" pad="27"/>
<connect gate="G$1" pin="IO2" pad="4"/>
<connect gate="G$1" pin="IO20" pad="28"/>
<connect gate="G$1" pin="IO21" pad="29"/>
<connect gate="G$1" pin="IO22" pad="30"/>
<connect gate="G$1" pin="IO23" pad="31"/>
<connect gate="G$1" pin="IO24" pad="36"/>
<connect gate="G$1" pin="IO25" pad="37"/>
<connect gate="G$1" pin="IO26" pad="38"/>
<connect gate="G$1" pin="IO27" pad="39"/>
<connect gate="G$1" pin="IO28" pad="40"/>
<connect gate="G$1" pin="IO29" pad="41"/>
<connect gate="G$1" pin="IO3" pad="5"/>
<connect gate="G$1" pin="IO30" pad="42"/>
<connect gate="G$1" pin="IO31" pad="43"/>
<connect gate="G$1" pin="IO4" pad="6"/>
<connect gate="G$1" pin="IO5" pad="7"/>
<connect gate="G$1" pin="IO6" pad="8"/>
<connect gate="G$1" pin="IO7" pad="9"/>
<connect gate="G$1" pin="IO8" pad="14"/>
<connect gate="G$1" pin="IO9" pad="15"/>
<connect gate="G$1" pin="TCK" pad="13"/>
<connect gate="G$1" pin="TDI" pad="10"/>
<connect gate="G$1" pin="TDO" pad="35"/>
<connect gate="G$1" pin="TMS" pad="32"/>
<connect gate="G$1" pin="VCC@1" pad="22"/>
<connect gate="G$1" pin="VCC@2" pad="44"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3639/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="amd-mach" library_urn="urn:adsk.eagle:library:99" deviceset="M4-32-P44" device="" package3d_urn="urn:adsk.eagle:package:3639/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="58.42" y="68.58" smashed="yes">
<attribute name="NAME" x="53.34" y="72.39" size="1.778" layer="95"/>
<attribute name="VALUE" x="53.34" y="60.96" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
