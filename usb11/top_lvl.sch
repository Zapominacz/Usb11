<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="USB_DM" />
        <signal name="USB_DP" />
        <signal name="XLXN_3" />
        <signal name="XLXN_2" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_75(7:0)" />
        <signal name="XLXN_76(7:0)" />
        <signal name="XLXN_77" />
        <signal name="XLXN_93" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <signal name="Clk_50" />
        <signal name="XLXN_109(7:0)" />
        <signal name="XLXN_110" />
        <signal name="XLXN_112" />
        <signal name="XLXN_115" />
        <signal name="XLXN_7" />
        <signal name="XLXN_124" />
        <signal name="XLXN_132" />
        <signal name="XLXN_133" />
        <signal name="XLXN_134" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <signal name="XLXN_138(7:0)" />
        <signal name="XLXN_141" />
        <signal name="XLXN_111" />
        <signal name="VGA_R" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="XLXN_145(7:0)" />
        <signal name="XLXN_149" />
        <signal name="XLXN_155" />
        <signal name="XLXN_157(7:0)" />
        <signal name="XLXN_160" />
        <signal name="XLXN_162(7:0)" />
        <signal name="XLXN_171" />
        <signal name="XLXN_173" />
        <signal name="XLXN_175" />
        <signal name="XLXN_177" />
        <signal name="XLXN_178" />
        <signal name="XLXN_179" />
        <signal name="XLXN_180" />
        <signal name="XLXN_181" />
        <signal name="XLXN_182" />
        <signal name="XLXN_184" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="USB_DM" />
        <port polarity="Input" name="USB_DP" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
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
            <timestamp>2016-4-19T14:29:33</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="256" />
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
        <blockdef name="sof_filter">
            <timestamp>2016-4-19T14:30:5</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <block symbolname="FSM_SendByte" name="XLXI_7">
            <blockpin signalname="XLXN_184" name="Clk" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_110" name="DIRdy" />
            <blockpin signalname="XLXN_141" name="TxBusy" />
            <blockpin signalname="XLXN_109(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_77" name="DORdy" />
            <blockpin signalname="XLXN_100" name="Busy" />
            <blockpin signalname="XLXN_76(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="usb_rx" name="XLXI_6">
            <blockpin signalname="USB_DP" name="d_p" />
            <blockpin signalname="USB_DM" name="d_m" />
            <blockpin signalname="XLXN_184" name="clk_60mhz" />
            <blockpin signalname="XLXN_111" name="busy" />
            <blockpin signalname="XLXN_112" name="received" />
            <blockpin signalname="XLXN_75(7:0)" name="rx_byte(7:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="XLXN_184" name="O" />
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
            <blockpin signalname="XLXN_149" name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="XLXN_184" name="Clk_Sys" />
            <blockpin signalname="Clk_50" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin signalname="XLXN_103" name="ScrollEn" />
            <blockpin signalname="XLXN_102" name="ScrollClear" />
            <blockpin signalname="XLXN_141" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_7" name="VGA_RGB" />
            <blockpin signalname="XLXN_77" name="Char_WE" />
        </block>
        <block symbolname="newline_fsm" name="XLXI_40">
            <blockpin signalname="XLXN_111" name="received" />
            <blockpin signalname="XLXN_184" name="clk" />
            <blockpin signalname="XLXN_99" name="busy" />
            <blockpin signalname="XLXN_149" name="newline" />
            <blockpin signalname="XLXN_115" name="should_block" />
        </block>
        <block symbolname="sof_filter" name="XLXI_45">
            <blockpin signalname="XLXN_111" name="new_line" />
            <blockpin signalname="XLXN_112" name="received" />
            <blockpin signalname="XLXN_184" name="clk" />
            <blockpin signalname="XLXN_75(7:0)" name="rx_byte(7:0)" />
            <blockpin signalname="XLXN_110" name="DIRdy" />
            <blockpin signalname="XLXN_109(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_115" name="should_block" />
        </block>
        <block symbolname="vcc" name="XLXI_42">
            <blockpin signalname="XLXN_103" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_43">
            <blockpin signalname="XLXN_102" name="P" />
        </block>
        <block symbolname="or2" name="XLXI_51">
            <blockpin signalname="XLXN_100" name="I0" />
            <blockpin signalname="XLXN_141" name="I1" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_48">
            <blockpin signalname="VGA_B" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_46">
            <blockpin signalname="VGA_R" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_47">
            <blockpin signalname="XLXN_7" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_3">
            <wire x2="1136" y1="1216" y2="1216" x1="896" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="928" y1="768" y2="768" x1="896" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="512" y1="768" y2="768" x1="496" />
        </branch>
        <branch name="USB_DM">
            <wire x2="1360" y1="912" y2="912" x1="1328" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3376" y1="800" y2="800" x1="3120" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3376" y1="864" y2="864" x1="3120" />
        </branch>
        <branch name="XLXN_75(7:0)">
            <wire x2="1808" y1="976" y2="976" x1="1744" />
        </branch>
        <branch name="XLXN_76(7:0)">
            <wire x2="2688" y1="800" y2="800" x1="2640" />
        </branch>
        <branch name="Clk_50">
            <wire x2="512" y1="624" y2="832" x1="512" />
            <wire x2="1168" y1="624" y2="624" x1="512" />
            <wire x2="1168" y1="624" y2="768" x1="1168" />
            <wire x2="2272" y1="624" y2="624" x1="1168" />
            <wire x2="2272" y1="624" y2="1408" x1="2272" />
            <wire x2="2688" y1="1408" y2="1408" x1="2272" />
            <wire x2="1168" y1="768" y2="768" x1="1152" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="3136" y1="928" y2="928" x1="3120" />
        </branch>
        <instance x="2656" y="1312" name="XLXI_42" orien="R270" />
        <instance x="2656" y="1376" name="XLXI_43" orien="R270" />
        <instance x="2256" y="1088" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_100">
            <wire x2="2640" y1="1216" y2="1216" x1="2512" />
            <wire x2="2640" y1="928" y2="1216" x1="2640" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="2256" y1="1248" y2="1248" x1="2208" />
        </branch>
        <instance x="2512" y="1152" name="XLXI_51" orien="R180" />
        <branch name="XLXN_115">
            <wire x2="2224" y1="1040" y2="1040" x1="2192" />
            <wire x2="2224" y1="1040" y2="1184" x1="2224" />
            <wire x2="2224" y1="1184" y2="1184" x1="2208" />
        </branch>
        <branch name="XLXN_141">
            <wire x2="2256" y1="928" y2="928" x1="2240" />
            <wire x2="2240" y1="928" y2="1520" x1="2240" />
            <wire x2="2512" y1="1520" y2="1520" x1="2240" />
            <wire x2="3120" y1="1520" y2="1520" x1="2512" />
            <wire x2="2512" y1="1280" y2="1520" x1="2512" />
            <wire x2="3120" y1="1056" y2="1520" x1="3120" />
        </branch>
        <instance x="2208" y="1280" name="XLXI_40" orien="R180">
        </instance>
        <branch name="VGA_R">
            <wire x2="3376" y1="752" y2="752" x1="3360" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3376" y1="704" y2="704" x1="3360" />
        </branch>
        <instance x="3232" y="640" name="XLXI_48" orien="R90" />
        <instance x="3232" y="688" name="XLXI_46" orien="R90" />
        <branch name="VGA_G">
            <wire x2="3376" y1="928" y2="928" x1="3360" />
        </branch>
        <instance x="3136" y="960" name="XLXI_47" orien="R0" />
        <iomarker fontsize="28" x="3376" y="800" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3376" y="704" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3376" y="752" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3376" y="864" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3376" y="928" name="VGA_G" orien="R0" />
        <branch name="XLXN_77">
            <wire x2="2688" y1="864" y2="864" x1="2640" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="2688" y1="1248" y2="1248" x1="2656" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="2688" y1="1312" y2="1312" x1="2656" />
        </branch>
        <instance x="2688" y="1408" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_149">
            <wire x2="1824" y1="1376" y2="1488" x1="1824" />
            <wire x2="2672" y1="1488" y2="1488" x1="1824" />
            <wire x2="2688" y1="1024" y2="1024" x1="2672" />
            <wire x2="2672" y1="1024" y2="1488" x1="2672" />
        </branch>
        <branch name="XLXN_109(7:0)">
            <wire x2="2208" y1="976" y2="976" x1="2192" />
            <wire x2="2208" y1="800" y2="976" x1="2208" />
            <wire x2="2256" y1="800" y2="800" x1="2208" />
        </branch>
        <branch name="XLXN_110">
            <wire x2="2224" y1="784" y2="784" x1="2192" />
            <wire x2="2224" y1="784" y2="864" x1="2224" />
            <wire x2="2256" y1="864" y2="864" x1="2224" />
        </branch>
        <branch name="XLXN_112">
            <wire x2="1776" y1="912" y2="912" x1="1744" />
            <wire x2="1776" y1="848" y2="912" x1="1776" />
            <wire x2="1808" y1="848" y2="848" x1="1776" />
        </branch>
        <instance x="1808" y="1008" name="XLXI_45" orien="R0">
        </instance>
        <branch name="USB_DP">
            <wire x2="1360" y1="848" y2="848" x1="1328" />
        </branch>
        <instance x="1360" y="1008" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_111">
            <wire x2="1760" y1="848" y2="848" x1="1744" />
            <wire x2="1760" y1="848" y2="1520" x1="1760" />
            <wire x2="2208" y1="1520" y2="1520" x1="1760" />
            <wire x2="1760" y1="784" y2="848" x1="1760" />
            <wire x2="1808" y1="784" y2="784" x1="1760" />
            <wire x2="2208" y1="1376" y2="1520" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="1328" y="848" name="USB_DP" orien="R180" />
        <iomarker fontsize="28" x="1328" y="912" name="USB_DM" orien="R180" />
        <instance x="928" y="800" name="XLXI_2" orien="R0" />
        <instance x="1136" y="1248" name="XLXI_3" orien="R0" />
        <instance x="512" y="1728" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_MULTIPLY" x="480" y="-584" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_DIVIDE" x="480" y="-632" type="instance" />
        </instance>
        <iomarker fontsize="28" x="496" y="768" name="Clk_50MHz" orien="R180" />
        <branch name="XLXN_184">
            <wire x2="1360" y1="976" y2="1088" x1="1360" />
            <wire x2="1360" y1="1088" y2="1216" x1="1360" />
            <wire x2="1792" y1="1088" y2="1088" x1="1360" />
            <wire x2="2208" y1="1088" y2="1088" x1="1792" />
            <wire x2="2208" y1="1088" y2="1296" x1="2208" />
            <wire x2="2208" y1="1296" y2="1312" x1="2208" />
            <wire x2="2224" y1="1296" y2="1296" x1="2208" />
            <wire x2="2224" y1="1296" y2="1472" x1="2224" />
            <wire x2="2688" y1="1472" y2="1472" x1="2224" />
            <wire x2="1808" y1="912" y2="912" x1="1792" />
            <wire x2="1792" y1="912" y2="1088" x1="1792" />
            <wire x2="2256" y1="1056" y2="1056" x1="2208" />
            <wire x2="2208" y1="1056" y2="1088" x1="2208" />
        </branch>
    </sheet>
</drawing>