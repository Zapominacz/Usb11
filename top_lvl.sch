<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_5" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30(63:0)" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="LED1" />
        <signal name="SF_CE" />
        <signal name="LCD_D(3:0)" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="LCD_E" />
        <signal name="USB_DP" />
        <signal name="USB_DM" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="LED1" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Output" name="LCD_D(3:0)" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Input" name="USB_DP" />
        <port polarity="Input" name="USB_DM" />
        <blockdef name="dcm_sp">
            <timestamp>2007-4-11T22:49:47</timestamp>
            <line x2="0" y1="-832" y2="-832" x1="64" />
            <rect width="256" x="64" y="-1024" height="960" />
            <line x2="320" y1="-960" y2="-960" x1="384" />
            <line x2="320" y1="-896" y2="-896" x1="384" />
            <line x2="320" y1="-832" y2="-832" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-768" y2="-768" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="320" y1="-704" y2="-704" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-960" y2="-960" x1="0" />
            <line x2="64" y1="-896" y2="-896" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <rect width="64" x="320" y="-336" height="32" />
            <line x2="80" y1="-944" y2="-960" x1="64" />
            <line x2="64" y1="-960" y2="-976" x1="80" />
            <line x2="64" y1="-288" y2="-288" x1="320" />
            <line x2="80" y1="-880" y2="-896" x1="64" />
            <line x2="64" y1="-896" y2="-912" x1="80" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="SHR64">
            <timestamp>2016-3-1T15:11:52</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="fsm">
            <timestamp>2016-3-1T15:11:56</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="LCD1x64" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_30(63:0)" name="Line(63:0)" />
            <blockpin name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="bufg" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="dcm_sp" name="XLXI_1">
            <attr value="6" name="CLKFX_MULTIPLY">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 32" />
            </attr>
            <attr value="5" name="CLKFX_DIVIDE">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 32" />
            </attr>
            <blockpin signalname="XLXN_5" name="CLKFB" />
            <blockpin signalname="Clk_50MHz" name="CLKIN" />
            <blockpin name="DSSEN" />
            <blockpin name="PSCLK" />
            <blockpin name="PSEN" />
            <blockpin name="PSINCDEC" />
            <blockpin name="RST" />
            <blockpin signalname="XLXN_2" name="CLK0" />
            <blockpin name="CLK180" />
            <blockpin name="CLK270" />
            <blockpin name="CLK2X" />
            <blockpin name="CLK2X180" />
            <blockpin name="CLK90" />
            <blockpin name="CLKDV" />
            <blockpin signalname="XLXN_3" name="CLKFX" />
            <blockpin name="CLKFX180" />
            <blockpin name="LOCKED" />
            <blockpin name="PSDONE" />
            <blockpin name="STATUS(7:0)" />
        </block>
        <block symbolname="SHR64" name="XLXI_18">
            <blockpin signalname="XLXN_31" name="Din" />
            <blockpin signalname="XLXN_28" name="Clk" />
            <blockpin signalname="XLXN_33" name="CE" />
            <blockpin signalname="XLXN_30(63:0)" name="Q(63:0)" />
        </block>
        <block symbolname="fsm" name="XLXI_19">
            <blockpin signalname="USB_DP" name="DP" />
            <blockpin signalname="USB_DM" name="DM" />
            <blockpin signalname="XLXN_28" name="Clk_60Mhz" />
            <blockpin signalname="LED1" name="synced" />
            <blockpin signalname="XLXN_31" name="DO" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="LED1" name="I" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2">
            <wire x2="816" y1="768" y2="768" x1="800" />
            <wire x2="832" y1="768" y2="768" x1="816" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="848" y1="1216" y2="1216" x1="800" />
        </branch>
        <instance x="416" y="1728" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_MULTIPLY" x="480" y="-584" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_DIVIDE" x="480" y="-632" type="instance" />
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="224" y1="768" y2="768" x1="208" />
            <wire x2="304" y1="768" y2="768" x1="224" />
            <wire x2="416" y1="768" y2="768" x1="304" />
            <wire x2="304" y1="640" y2="768" x1="304" />
            <wire x2="1344" y1="640" y2="640" x1="304" />
            <wire x2="1344" y1="640" y2="1216" x1="1344" />
            <wire x2="2368" y1="1216" y2="1216" x1="1344" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="400" y1="656" y2="832" x1="400" />
            <wire x2="416" y1="832" y2="832" x1="400" />
            <wire x2="1120" y1="656" y2="656" x1="400" />
            <wire x2="1120" y1="656" y2="768" x1="1120" />
            <wire x2="1072" y1="768" y2="768" x1="1056" />
            <wire x2="1120" y1="768" y2="768" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="208" y="768" name="Clk_50MHz" orien="R180" />
        <instance x="832" y="800" name="XLXI_2" orien="R0" />
        <instance x="848" y="1248" name="XLXI_3" orien="R0" />
        <instance x="2368" y="1248" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1456" y="992" name="XLXI_18" orien="R0">
        </instance>
        <instance x="1568" y="1440" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_28">
            <wire x2="1264" y1="1216" y2="1216" x1="1072" />
            <wire x2="1264" y1="1216" y2="1408" x1="1264" />
            <wire x2="1568" y1="1408" y2="1408" x1="1264" />
            <wire x2="1264" y1="896" y2="1216" x1="1264" />
            <wire x2="1456" y1="896" y2="896" x1="1264" />
        </branch>
        <branch name="XLXN_30(63:0)">
            <wire x2="2096" y1="832" y2="832" x1="1840" />
            <wire x2="2096" y1="832" y2="960" x1="2096" />
            <wire x2="2368" y1="960" y2="960" x1="2096" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1456" y1="832" y2="832" x1="1392" />
            <wire x2="1392" y1="832" y2="1056" x1="1392" />
            <wire x2="2016" y1="1056" y2="1056" x1="1392" />
            <wire x2="2016" y1="1056" y2="1408" x1="2016" />
            <wire x2="2016" y1="1408" y2="1408" x1="1952" />
        </branch>
        <instance x="1488" y="1600" name="XLXI_20" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1456" y1="960" y2="960" x1="1376" />
            <wire x2="1376" y1="960" y2="1040" x1="1376" />
            <wire x2="2032" y1="1040" y2="1040" x1="1376" />
            <wire x2="2032" y1="1040" y2="1568" x1="2032" />
            <wire x2="2032" y1="1568" y2="1568" x1="1712" />
        </branch>
        <branch name="LED1">
            <wire x2="1408" y1="1456" y2="1568" x1="1408" />
            <wire x2="1488" y1="1568" y2="1568" x1="1408" />
            <wire x2="2160" y1="1456" y2="1456" x1="1408" />
            <wire x2="2160" y1="1280" y2="1280" x1="1952" />
            <wire x2="2800" y1="1280" y2="1280" x1="2160" />
            <wire x2="2800" y1="1280" y2="1552" x1="2800" />
            <wire x2="2912" y1="1552" y2="1552" x1="2800" />
            <wire x2="2160" y1="1280" y2="1456" x1="2160" />
        </branch>
        <branch name="SF_CE">
            <wire x2="2928" y1="1216" y2="1216" x1="2784" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="2928" y1="1152" y2="1152" x1="2784" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="2928" y1="1088" y2="1088" x1="2784" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="2928" y1="1024" y2="1024" x1="2784" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2928" y1="960" y2="960" x1="2784" />
        </branch>
        <branch name="USB_DP">
            <wire x2="240" y1="960" y2="960" x1="224" />
            <wire x2="240" y1="672" y2="960" x1="240" />
            <wire x2="1136" y1="672" y2="672" x1="240" />
            <wire x2="1136" y1="672" y2="1280" x1="1136" />
            <wire x2="1568" y1="1280" y2="1280" x1="1136" />
        </branch>
        <branch name="USB_DM">
            <wire x2="336" y1="1056" y2="1056" x1="224" />
            <wire x2="336" y1="1056" y2="1728" x1="336" />
            <wire x2="864" y1="1728" y2="1728" x1="336" />
            <wire x2="864" y1="1344" y2="1728" x1="864" />
            <wire x2="1568" y1="1344" y2="1344" x1="864" />
        </branch>
        <iomarker fontsize="28" x="224" y="960" name="USB_DP" orien="R180" />
        <iomarker fontsize="28" x="224" y="1056" name="USB_DM" orien="R180" />
        <iomarker fontsize="28" x="2928" y="960" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1024" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1088" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1152" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1216" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1552" name="LED1" orien="R0" />
    </sheet>
</drawing>