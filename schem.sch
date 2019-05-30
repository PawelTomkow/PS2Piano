<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4(11:0)" />
        <signal name="led_1" />
        <signal name="CLK" />
        <signal name="FPGA_INIT_B" />
        <signal name="SF_CE0" />
        <signal name="AD_CONV" />
        <signal name="AMP_CS" />
        <signal name="SPI_SS_B" />
        <signal name="DAC_CLR" />
        <signal name="DAC_CS" />
        <signal name="SPI_SCK" />
        <signal name="SPI_MISO" />
        <signal name="SPI_MOSI" />
        <signal name="XLXN_8(3:0)" />
        <signal name="XLXN_9(3:0)" />
        <signal name="MODE_01" />
        <signal name="XLXN_19" />
        <signal name="ENABLE" />
        <signal name="MODE_02" />
        <signal name="XLXN_24(7:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45(3:0)" />
        <signal name="XLXN_46(3:0)" />
        <signal name="XLXN_47" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50(3:0)" />
        <signal name="XLXN_51(3:0)" />
        <signal name="XLXN_53(3:0)" />
        <signal name="led_0" />
        <signal name="RESET" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64(7:0)" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66(7:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_70" />
        <port polarity="Output" name="led_1" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="MODE_01" />
        <port polarity="Input" name="ENABLE" />
        <port polarity="Input" name="MODE_02" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="led_0" />
        <port polarity="Input" name="RESET" />
        <blockdef name="DACWrite">
            <timestamp>2019-4-16T9:55:28</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="KeyboardAndGenerator">
            <timestamp>2019-5-17T9:28:3</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <rect width="64" x="416" y="-268" height="24" />
            <line x2="480" y1="-256" y2="-256" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-76" height="24" />
            <line x2="480" y1="-64" y2="-64" x1="416" />
            <rect width="352" x="64" y="-384" height="448" />
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
        <blockdef name="PS2_Kbd">
            <timestamp>2019-5-23T7:2:11</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="PS2ToFreQRISE">
            <timestamp>2019-5-30T9:34:35</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
            <rect width="368" x="64" y="-256" height="448" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_1">
            <blockpin signalname="RESET" name="Reset" />
            <blockpin signalname="XLXN_56" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_8(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="led_1" name="Busy" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="CLK" name="Clk_Sys" />
        </block>
        <block symbolname="KeyboardAndGenerator" name="XLXI_6">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="led_1" name="BUSY" />
            <blockpin signalname="XLXN_19" name="ENABLE" />
            <blockpin signalname="MODE_01" name="MODE_01" />
            <blockpin signalname="MODE_02" name="MODE_02" />
            <blockpin signalname="XLXN_53(3:0)" name="FREQ(3:0)" />
            <blockpin signalname="XLXN_56" name="START_OUT" />
            <blockpin signalname="XLXN_9(3:0)" name="ADDRESS_OUT(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="COMMAND_OUT(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA_OUT(11:0)" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="led_0" name="I0" />
            <blockpin signalname="ENABLE" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_9">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="XLXN_37" name="E0" />
            <blockpin signalname="XLXN_70" name="F0" />
            <blockpin signalname="XLXN_38" name="DO_Rdy" />
            <blockpin signalname="XLXN_24(7:0)" name="DO(7:0)" />
            <blockpin signalname="CLK" name="Clk_Sys" />
        </block>
        <block symbolname="PS2ToFreQRISE" name="XLXI_12">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_24(7:0)" name="DO_IN(7:0)" />
            <blockpin signalname="led_0" name="ENABLE_KEYBOARD" />
            <blockpin signalname="XLXN_53(3:0)" name="FREQ_OUT(3:0)" />
            <blockpin signalname="XLXN_38" name="KB_READY" />
            <blockpin signalname="XLXN_37" name="E0" />
            <blockpin signalname="XLXN_70" name="F0" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2592" y="976" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_4(11:0)">
            <wire x2="2576" y1="1696" y2="1696" x1="2192" />
            <wire x2="2592" y1="624" y2="624" x1="2576" />
            <wire x2="2576" y1="624" y2="1696" x1="2576" />
        </branch>
        <branch name="led_1">
            <wire x2="1632" y1="1328" y2="1536" x1="1632" />
            <wire x2="1712" y1="1536" y2="1536" x1="1632" />
            <wire x2="3120" y1="1328" y2="1328" x1="1632" />
            <wire x2="3120" y1="1072" y2="1072" x1="3040" />
            <wire x2="3120" y1="1072" y2="1136" x1="3120" />
            <wire x2="3328" y1="1136" y2="1136" x1="3120" />
            <wire x2="3120" y1="1136" y2="1328" x1="3120" />
        </branch>
        <branch name="CLK">
            <wire x2="752" y1="432" y2="432" x1="160" />
            <wire x2="1120" y1="432" y2="432" x1="752" />
            <wire x2="1120" y1="432" y2="1072" x1="1120" />
            <wire x2="2480" y1="1072" y2="1072" x1="1120" />
            <wire x2="2592" y1="1072" y2="1072" x1="2480" />
            <wire x2="2480" y1="1072" y2="1136" x1="2480" />
            <wire x2="2592" y1="1136" y2="1136" x1="2480" />
            <wire x2="1408" y1="432" y2="432" x1="1120" />
            <wire x2="1408" y1="432" y2="1408" x1="1408" />
            <wire x2="1712" y1="1408" y2="1408" x1="1408" />
            <wire x2="752" y1="240" y2="432" x1="752" />
            <wire x2="912" y1="240" y2="240" x1="752" />
            <wire x2="1024" y1="240" y2="240" x1="912" />
            <wire x2="1072" y1="240" y2="240" x1="1024" />
            <wire x2="1024" y1="240" y2="304" x1="1024" />
            <wire x2="1072" y1="304" y2="304" x1="1024" />
            <wire x2="912" y1="16" y2="240" x1="912" />
            <wire x2="1568" y1="16" y2="16" x1="912" />
            <wire x2="1568" y1="16" y2="256" x1="1568" />
            <wire x2="1680" y1="256" y2="256" x1="1568" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="3072" y1="1008" y2="1008" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="1008" name="FPGA_INIT_B" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="3072" y1="944" y2="944" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="944" name="SF_CE0" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="3072" y1="880" y2="880" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="880" name="AD_CONV" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="3072" y1="816" y2="816" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="816" name="AMP_CS" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="3072" y1="752" y2="752" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="752" name="SPI_SS_B" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="3072" y1="688" y2="688" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="688" name="DAC_CLR" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="3072" y1="624" y2="624" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="624" name="DAC_CS" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="3072" y1="560" y2="560" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="560" name="SPI_SCK" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="3072" y1="496" y2="496" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="496" name="SPI_MISO" orien="R0" />
        <branch name="SPI_MOSI">
            <wire x2="3072" y1="432" y2="432" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3072" y="432" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1136" name="led_1" orien="R0" />
        <branch name="XLXN_8(3:0)">
            <wire x2="2368" y1="1600" y2="1600" x1="2192" />
            <wire x2="2368" y1="496" y2="1600" x1="2368" />
            <wire x2="2592" y1="496" y2="496" x1="2368" />
        </branch>
        <branch name="XLXN_9(3:0)">
            <wire x2="2384" y1="1504" y2="1504" x1="2192" />
            <wire x2="2384" y1="560" y2="1504" x1="2384" />
            <wire x2="2592" y1="560" y2="560" x1="2384" />
        </branch>
        <branch name="MODE_01">
            <wire x2="1472" y1="704" y2="704" x1="160" />
            <wire x2="1472" y1="704" y2="1664" x1="1472" />
            <wire x2="1712" y1="1664" y2="1664" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="160" y="432" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="160" y="704" name="MODE_01" orien="R180" />
        <iomarker fontsize="28" x="160" y="960" name="MODE_02" orien="R180" />
        <instance x="1136" y="1712" name="XLXI_8" orien="R0" />
        <branch name="ENABLE">
            <wire x2="1136" y1="352" y2="352" x1="160" />
            <wire x2="1136" y1="352" y2="1568" x1="1136" />
            <wire x2="1136" y1="1568" y2="1584" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="160" y="352" name="ENABLE" orien="R180" />
        <branch name="MODE_02">
            <wire x2="176" y1="960" y2="960" x1="160" />
            <wire x2="176" y1="960" y2="1728" x1="176" />
            <wire x2="1712" y1="1728" y2="1728" x1="176" />
        </branch>
        <instance x="1072" y="336" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_24(7:0)">
            <wire x2="1472" y1="112" y2="112" x1="1456" />
            <wire x2="1472" y1="112" y2="384" x1="1472" />
            <wire x2="1680" y1="384" y2="384" x1="1472" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="1072" y1="112" y2="112" x1="768" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="1072" y1="176" y2="176" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="112" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="768" y="176" name="PS2_Data" orien="R180" />
        <branch name="XLXN_37">
            <wire x2="1488" y1="176" y2="176" x1="1456" />
            <wire x2="1488" y1="176" y2="432" x1="1488" />
            <wire x2="1552" y1="432" y2="432" x1="1488" />
            <wire x2="1600" y1="432" y2="432" x1="1552" />
            <wire x2="1600" y1="432" y2="512" x1="1600" />
            <wire x2="1680" y1="512" y2="512" x1="1600" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1552" y1="304" y2="304" x1="1456" />
            <wire x2="1552" y1="304" y2="368" x1="1552" />
            <wire x2="1616" y1="368" y2="368" x1="1552" />
            <wire x2="1616" y1="368" y2="448" x1="1616" />
            <wire x2="1680" y1="448" y2="448" x1="1616" />
        </branch>
        <instance x="1712" y="1760" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_19">
            <wire x2="1408" y1="1616" y2="1616" x1="1392" />
            <wire x2="1712" y1="1600" y2="1600" x1="1408" />
            <wire x2="1408" y1="1600" y2="1616" x1="1408" />
        </branch>
        <branch name="XLXN_53(3:0)">
            <wire x2="1712" y1="1792" y2="1792" x1="1696" />
            <wire x2="1696" y1="1792" y2="1872" x1="1696" />
            <wire x2="2272" y1="1872" y2="1872" x1="1696" />
            <wire x2="2272" y1="384" y2="384" x1="2176" />
            <wire x2="2272" y1="384" y2="1872" x1="2272" />
        </branch>
        <branch name="led_0">
            <wire x2="1136" y1="1648" y2="1648" x1="1056" />
            <wire x2="1056" y1="1648" y2="1888" x1="1056" />
            <wire x2="2256" y1="1888" y2="1888" x1="1056" />
            <wire x2="2208" y1="192" y2="192" x1="2176" />
            <wire x2="2208" y1="144" y2="192" x1="2208" />
            <wire x2="2256" y1="144" y2="144" x1="2208" />
            <wire x2="2256" y1="144" y2="1888" x1="2256" />
            <wire x2="3104" y1="144" y2="144" x1="2256" />
        </branch>
        <branch name="RESET">
            <wire x2="672" y1="592" y2="592" x1="176" />
            <wire x2="672" y1="592" y2="1008" x1="672" />
            <wire x2="1536" y1="1008" y2="1008" x1="672" />
            <wire x2="1632" y1="1008" y2="1008" x1="1536" />
            <wire x2="2592" y1="1008" y2="1008" x1="1632" />
            <wire x2="1632" y1="1008" y2="1024" x1="1632" />
            <wire x2="1696" y1="1024" y2="1024" x1="1632" />
            <wire x2="1696" y1="1024" y2="1472" x1="1696" />
            <wire x2="1712" y1="1472" y2="1472" x1="1696" />
            <wire x2="1680" y1="320" y2="320" x1="1536" />
            <wire x2="1536" y1="320" y2="1008" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="176" y="592" name="RESET" orien="R180" />
        <branch name="XLXN_56">
            <wire x2="2352" y1="1408" y2="1408" x1="2192" />
            <wire x2="2352" y1="432" y2="1408" x1="2352" />
            <wire x2="2592" y1="432" y2="432" x1="2352" />
        </branch>
        <iomarker fontsize="28" x="3104" y="144" name="led_0" orien="R0" />
        <instance x="1680" y="416" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_70">
            <wire x2="1504" y1="240" y2="240" x1="1456" />
            <wire x2="1504" y1="240" y2="496" x1="1504" />
            <wire x2="1552" y1="496" y2="496" x1="1504" />
            <wire x2="1552" y1="496" y2="576" x1="1552" />
            <wire x2="1680" y1="576" y2="576" x1="1552" />
        </branch>
    </sheet>
</drawing>