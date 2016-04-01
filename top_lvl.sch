<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="Clk_50MHz" />
        <signal name="Clk_50" />
        <signal name="SF_CE" />
        <signal name="LCD_D(3:0)" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="LCD_E" />
        <signal name="USB_DM" />
        <signal name="USB_DP" />
        <signal name="Clk_Sys" />
        <signal name="XLXN_4" />
        <signal name="Line(63:0)" />
        <signal name="Line(7:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Output" name="LCD_D(3:0)" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Input" name="USB_DM" />
        <port polarity="Input" name="USB_DP" />
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
        <blockdef name="usb_rx">
            <timestamp>2016-4-1T17:28:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="LCD1x64" name="XLXI_4">
            <blockpin signalname="Clk_50" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="Line(63:0)" name="Line(63:0)" />
            <blockpin name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="bufg" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="I" />
            <blockpin signalname="Clk_50" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="Clk_Sys" name="O" />
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
            <blockpin signalname="Clk_50" name="CLKFB" />
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
        <block symbolname="usb_rx" name="XLXI_6">
            <blockpin signalname="USB_DP" name="d_p" />
            <blockpin signalname="USB_DM" name="d_m" />
            <blockpin signalname="Clk_Sys" name="clk_60mhz" />
            <blockpin name="busy" />
            <blockpin name="received" />
            <blockpin signalname="Line(7:0)" name="rx_byte(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2">
            <wire x2="832" y1="768" y2="768" x1="800" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="848" y1="1216" y2="1216" x1="800" />
        </branch>
        <instance x="416" y="1728" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_MULTIPLY" x="480" y="-584" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_DIVIDE" x="480" y="-632" type="instance" />
        </instance>
        <branch name="Clk_50">
            <wire x2="1120" y1="640" y2="640" x1="400" />
            <wire x2="1120" y1="640" y2="768" x1="1120" />
            <wire x2="1344" y1="768" y2="768" x1="1120" />
            <wire x2="1344" y1="768" y2="1216" x1="1344" />
            <wire x2="2368" y1="1216" y2="1216" x1="1344" />
            <wire x2="400" y1="640" y2="832" x1="400" />
            <wire x2="416" y1="832" y2="832" x1="400" />
            <wire x2="1120" y1="768" y2="768" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="208" y="768" name="Clk_50MHz" orien="R180" />
        <instance x="832" y="800" name="XLXI_2" orien="R0" />
        <instance x="848" y="1248" name="XLXI_3" orien="R0" />
        <instance x="2368" y="1248" name="XLXI_4" orien="R0">
        </instance>
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
        <iomarker fontsize="28" x="2928" y="960" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1024" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1088" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1152" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1216" name="SF_CE" orien="R0" />
        <branch name="Clk_50MHz">
            <wire x2="416" y1="768" y2="768" x1="208" />
        </branch>
        <instance x="1664" y="1120" name="XLXI_6" orien="R0">
        </instance>
        <branch name="USB_DP">
            <wire x2="1664" y1="960" y2="960" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1616" y="960" name="USB_DP" orien="R180" />
        <iomarker fontsize="28" x="1632" y="1024" name="USB_DM" orien="R180" />
        <branch name="USB_DM">
            <wire x2="1664" y1="1024" y2="1024" x1="1632" />
        </branch>
        <branch name="Clk_Sys">
            <wire x2="1312" y1="1216" y2="1216" x1="1072" />
            <wire x2="1664" y1="1088" y2="1088" x1="1312" />
            <wire x2="1312" y1="1088" y2="1216" x1="1312" />
        </branch>
        <branch name="Line(63:0)">
            <wire x2="2304" y1="880" y2="912" x1="2304" />
            <wire x2="2304" y1="912" y2="960" x1="2304" />
            <wire x2="2368" y1="960" y2="960" x1="2304" />
        </branch>
        <bustap x2="2208" y1="912" y2="912" x1="2304" />
        <branch name="Line(7:0)">
            <wire x2="2128" y1="1088" y2="1088" x1="2048" />
            <wire x2="2128" y1="912" y2="1088" x1="2128" />
            <wire x2="2208" y1="912" y2="912" x1="2128" />
        </branch>
    </sheet>
</drawing>