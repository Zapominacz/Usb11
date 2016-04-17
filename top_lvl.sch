<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="Clk_Sys" />
        <signal name="USB_DM" />
        <signal name="USB_DP" />
        <signal name="XLXN_3" />
        <signal name="XLXN_2" />
        <signal name="Clk_50" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_7" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_75(7:0)" />
        <signal name="XLXN_76(7:0)" />
        <signal name="XLXN_77" />
        <signal name="XLXN_82" />
        <signal name="XLXN_93" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="USB_DM" />
        <port polarity="Input" name="USB_DP" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
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
        <blockdef name="FSM_SendByte">
            <timestamp>2016-4-5T13:47:10</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="newline_fsm">
            <timestamp>2016-4-5T14:43:26</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="FSM_SendByte" name="XLXI_7">
            <blockpin signalname="Clk_50" name="Clk" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_82" name="DIRdy" />
            <blockpin signalname="XLXN_101" name="TxBusy" />
            <blockpin signalname="XLXN_75(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_77" name="DORdy" />
            <blockpin signalname="XLXN_100" name="Busy" />
            <blockpin signalname="XLXN_76(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="usb_rx" name="XLXI_6">
            <blockpin signalname="USB_DP" name="d_p" />
            <blockpin signalname="USB_DM" name="d_m" />
            <blockpin signalname="Clk_Sys" name="clk_60mhz" />
            <blockpin signalname="XLXN_98" name="busy" />
            <blockpin signalname="XLXN_82" name="received" />
            <blockpin signalname="XLXN_75(7:0)" name="rx_byte(7:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="Clk_Sys" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="I" />
            <blockpin signalname="Clk_50" name="O" />
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
        <block symbolname="VGAtxt48x20" name="XLXI_8">
            <blockpin signalname="XLXN_76(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin signalname="XLXN_93" name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="Clk_50" name="Clk_Sys" />
            <blockpin signalname="Clk_50" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin signalname="XLXN_103" name="ScrollEn" />
            <blockpin signalname="XLXN_102" name="ScrollClear" />
            <blockpin signalname="XLXN_101" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_7" name="VGA_RGB" />
            <blockpin signalname="XLXN_77" name="Char_WE" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="XLXN_7" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_33">
            <blockpin signalname="VGA_R" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_34">
            <blockpin signalname="VGA_B" name="G" />
        </block>
        <block symbolname="newline_fsm" name="XLXI_40">
            <blockpin signalname="XLXN_98" name="received" />
            <blockpin signalname="Clk_50" name="clk" />
            <blockpin signalname="XLXN_99" name="busy" />
            <blockpin signalname="XLXN_93" name="newline" />
        </block>
        <block symbolname="or2" name="XLXI_41">
            <blockpin signalname="XLXN_101" name="I0" />
            <blockpin signalname="XLXN_100" name="I1" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_42">
            <blockpin signalname="XLXN_103" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_43">
            <blockpin signalname="XLXN_102" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="USB_DP">
            <wire x2="1152" y1="1408" y2="1408" x1="1120" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="640" y1="1216" y2="1216" x1="624" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="672" y1="768" y2="768" x1="624" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="240" y1="768" y2="768" x1="208" />
        </branch>
        <instance x="672" y="800" name="XLXI_2" orien="R0" />
        <branch name="Clk_Sys">
            <wire x2="864" y1="1216" y2="1536" x1="864" />
            <wire x2="1152" y1="1536" y2="1536" x1="864" />
        </branch>
        <branch name="USB_DM">
            <wire x2="1152" y1="1472" y2="1472" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="208" y="768" name="Clk_50MHz" orien="R180" />
        <branch name="Clk_50">
            <wire x2="240" y1="592" y2="832" x1="240" />
            <wire x2="1040" y1="592" y2="592" x1="240" />
            <wire x2="1040" y1="592" y2="768" x1="1040" />
            <wire x2="1040" y1="768" y2="1168" x1="1040" />
            <wire x2="1712" y1="1168" y2="1168" x1="1040" />
            <wire x2="2208" y1="1168" y2="1168" x1="1712" />
            <wire x2="2208" y1="1168" y2="1312" x1="2208" />
            <wire x2="2208" y1="1312" y2="1408" x1="2208" />
            <wire x2="2208" y1="1408" y2="1472" x1="2208" />
            <wire x2="2384" y1="1472" y2="1472" x1="2208" />
            <wire x2="2384" y1="1408" y2="1408" x1="2208" />
            <wire x2="1040" y1="768" y2="768" x1="896" />
            <wire x2="1712" y1="1056" y2="1168" x1="1712" />
            <wire x2="2208" y1="1312" y2="1312" x1="2096" />
        </branch>
        <instance x="240" y="1728" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_MULTIPLY" x="480" y="-584" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_DIVIDE" x="480" y="-632" type="instance" />
        </instance>
        <iomarker fontsize="28" x="1120" y="1472" name="USB_DM" orien="R180" />
        <instance x="1152" y="1568" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1120" y="1408" name="USB_DP" orien="R180" />
        <instance x="2384" y="1408" name="XLXI_8" orien="R0">
        </instance>
        <branch name="VGA_HS">
            <wire x2="3088" y1="800" y2="800" x1="2816" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3088" y1="864" y2="864" x1="2816" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2848" y1="928" y2="928" x1="2816" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3088" y1="992" y2="992" x1="3008" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3088" y1="928" y2="928" x1="3072" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3088" y1="1056" y2="1056" x1="3008" />
        </branch>
        <instance x="1712" y="1088" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_75(7:0)">
            <wire x2="1616" y1="1536" y2="1536" x1="1536" />
            <wire x2="1616" y1="800" y2="1536" x1="1616" />
            <wire x2="1712" y1="800" y2="800" x1="1616" />
        </branch>
        <branch name="XLXN_76(7:0)">
            <wire x2="2384" y1="800" y2="800" x1="2096" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="2384" y1="864" y2="864" x1="2096" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="1568" y1="1472" y2="1472" x1="1536" />
            <wire x2="1568" y1="864" y2="1472" x1="1568" />
            <wire x2="1712" y1="864" y2="864" x1="1568" />
        </branch>
        <instance x="2848" y="960" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="3088" y="928" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3088" y="864" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3088" y="800" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3088" y="992" name="VGA_R" orien="R0" />
        <instance x="2880" y="928" name="XLXI_33" orien="R90" />
        <iomarker fontsize="28" x="3088" y="1056" name="VGA_B" orien="R0" />
        <instance x="2880" y="992" name="XLXI_34" orien="R90" />
        <branch name="XLXN_93">
            <wire x2="1712" y1="1376" y2="1376" x1="1664" />
            <wire x2="1664" y1="1376" y2="1536" x1="1664" />
            <wire x2="2176" y1="1536" y2="1536" x1="1664" />
            <wire x2="2176" y1="1024" y2="1536" x1="2176" />
            <wire x2="2384" y1="1024" y2="1024" x1="2176" />
        </branch>
        <instance x="2096" y="1280" name="XLXI_40" orien="R180">
        </instance>
        <branch name="XLXN_98">
            <wire x2="1600" y1="1408" y2="1408" x1="1536" />
            <wire x2="1600" y1="1408" y2="1520" x1="1600" />
            <wire x2="2096" y1="1520" y2="1520" x1="1600" />
            <wire x2="2096" y1="1376" y2="1520" x1="2096" />
        </branch>
        <instance x="1776" y="1808" name="XLXI_41" orien="R0" />
        <branch name="XLXN_99">
            <wire x2="2144" y1="1712" y2="1712" x1="2032" />
            <wire x2="2144" y1="1248" y2="1248" x1="2096" />
            <wire x2="2144" y1="1248" y2="1712" x1="2144" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="1696" y1="1152" y2="1680" x1="1696" />
            <wire x2="1776" y1="1680" y2="1680" x1="1696" />
            <wire x2="2160" y1="1152" y2="1152" x1="1696" />
            <wire x2="2160" y1="928" y2="928" x1="2096" />
            <wire x2="2160" y1="928" y2="1152" x1="2160" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="1712" y1="928" y2="928" x1="1680" />
            <wire x2="1680" y1="928" y2="1600" x1="1680" />
            <wire x2="1760" y1="1600" y2="1600" x1="1680" />
            <wire x2="2816" y1="1600" y2="1600" x1="1760" />
            <wire x2="1760" y1="1600" y2="1744" x1="1760" />
            <wire x2="1776" y1="1744" y2="1744" x1="1760" />
            <wire x2="2816" y1="1056" y2="1600" x1="2816" />
        </branch>
        <instance x="2208" y="1168" name="XLXI_42" orien="R0" />
        <instance x="2224" y="1312" name="XLXI_43" orien="R0" />
        <branch name="XLXN_102">
            <wire x2="2288" y1="1312" y2="1392" x1="2288" />
            <wire x2="2368" y1="1392" y2="1392" x1="2288" />
            <wire x2="2368" y1="1312" y2="1392" x1="2368" />
            <wire x2="2384" y1="1312" y2="1312" x1="2368" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="2272" y1="1168" y2="1232" x1="2272" />
            <wire x2="2368" y1="1232" y2="1232" x1="2272" />
            <wire x2="2368" y1="1232" y2="1248" x1="2368" />
            <wire x2="2384" y1="1248" y2="1248" x1="2368" />
        </branch>
        <instance x="640" y="1248" name="XLXI_3" orien="R0" />
    </sheet>
</drawing>