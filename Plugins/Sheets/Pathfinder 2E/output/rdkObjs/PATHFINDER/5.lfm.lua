require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmPATHFINDER5_svg()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmPATHFINDER5_svg");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(905);
    obj.rectangle1:setHeight(1175);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(905);
    obj.image1:setHeight(1175);
    obj.image1:setSRC("/PATHFINDER/images/5.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setLeft(78);
    obj.edit1:setTop(55);
    obj.edit1:setWidth(35);
    obj.edit1:setHeight(25);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontColor("black");
    obj.edit1:setFontSize(14);
    obj.edit1:setTransparent(false);
    obj.edit1:setField("AtaqueMagia");
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle1);
    obj.edit2:setLeft(129);
    obj.edit2:setTop(60);
    obj.edit2:setWidth(35);
    obj.edit2:setHeight(22);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setFontColor("black");
    obj.edit2:setFontSize(14);
    obj.edit2:setTransparent(false);
    obj.edit2:setField("AtaqueMagiaATBChave");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle1);
    obj.edit3:setLeft(173);
    obj.edit3:setTop(60);
    obj.edit3:setWidth(35);
    obj.edit3:setHeight(22);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontColor("black");
    obj.edit3:setFontSize(14);
    obj.edit3:setTransparent(false);
    obj.edit3:setField("AtaqueMagiaProf");
    obj.edit3:setName("edit3");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.rectangle1);
    obj.checkBox1:setLeft(209);
    obj.checkBox1:setTop(62);
    obj.checkBox1:setField("TEML1AtaqueMagia1");
    obj.checkBox1:setName("checkBox1");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.rectangle1);
    obj.checkBox2:setLeft(221);
    obj.checkBox2:setTop(62);
    obj.checkBox2:setField("TEML2AtaqueMagia1");
    obj.checkBox2:setName("checkBox2");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.rectangle1);
    obj.checkBox3:setLeft(233);
    obj.checkBox3:setTop(62);
    obj.checkBox3:setField("TEML3AtaqueMagia1");
    obj.checkBox3:setName("checkBox3");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.rectangle1);
    obj.checkBox4:setLeft(245);
    obj.checkBox4:setTop(62);
    obj.checkBox4:setField("TEML4AtaqueMagia1");
    obj.checkBox4:setName("checkBox4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle1);
    obj.edit4:setLeft(62);
    obj.edit4:setTop(115);
    obj.edit4:setWidth(35);
    obj.edit4:setHeight(22);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setFontColor("black");
    obj.edit4:setFontSize(14);
    obj.edit4:setTransparent(false);
    obj.edit4:setField("CDMagia");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle1);
    obj.edit5:setLeft(143);
    obj.edit5:setTop(120);
    obj.edit5:setWidth(35);
    obj.edit5:setHeight(22);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setFontColor("black");
    obj.edit5:setFontSize(14);
    obj.edit5:setTransparent(false);
    obj.edit5:setField("CDMagiaATBChave");
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle1);
    obj.edit6:setLeft(187);
    obj.edit6:setTop(120);
    obj.edit6:setWidth(35);
    obj.edit6:setHeight(22);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setFontColor("black");
    obj.edit6:setFontSize(14);
    obj.edit6:setTransparent(false);
    obj.edit6:setField("CDMagiaProf");
    obj.edit6:setName("edit6");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.rectangle1);
    obj.checkBox5:setLeft(225);
    obj.checkBox5:setTop(121);
    obj.checkBox5:setField("TEML1CDMagia1");
    obj.checkBox5:setName("checkBox5");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.rectangle1);
    obj.checkBox6:setLeft(237);
    obj.checkBox6:setTop(121);
    obj.checkBox6:setField("TEML2CDMagia1");
    obj.checkBox6:setName("checkBox6");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.rectangle1);
    obj.checkBox7:setLeft(249);
    obj.checkBox7:setTop(121);
    obj.checkBox7:setField("TEML3CDMagia1");
    obj.checkBox7:setName("checkBox7");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.rectangle1);
    obj.checkBox8:setLeft(261);
    obj.checkBox8:setTop(121);
    obj.checkBox8:setField("TEML4CDMagia1");
    obj.checkBox8:setName("checkBox8");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle1);
    obj.edit7:setLeft(135);
    obj.edit7:setTop(190);
    obj.edit7:setWidth(28);
    obj.edit7:setHeight(22);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setFontColor("black");
    obj.edit7:setFontSize(14);
    obj.edit7:setTransparent(false);
    obj.edit7:setField("TradicoesMagicasArcanas");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle1);
    obj.edit8:setLeft(165);
    obj.edit8:setTop(190);
    obj.edit8:setWidth(28);
    obj.edit8:setHeight(22);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setFontColor("black");
    obj.edit8:setFontSize(14);
    obj.edit8:setTransparent(false);
    obj.edit8:setField("TradicoesMagicasOcustistas");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle1);
    obj.edit9:setLeft(135);
    obj.edit9:setTop(215);
    obj.edit9:setWidth(28);
    obj.edit9:setHeight(22);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setFontColor("black");
    obj.edit9:setFontSize(14);
    obj.edit9:setTransparent(false);
    obj.edit9:setField("TradicoesMagicasPrimais");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle1);
    obj.edit10:setLeft(165);
    obj.edit10:setTop(215);
    obj.edit10:setWidth(28);
    obj.edit10:setHeight(22);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontColor("black");
    obj.edit10:setFontSize(14);
    obj.edit10:setTransparent(false);
    obj.edit10:setField("TradicoesMagicasDivinas");
    obj.edit10:setName("edit10");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle1);
    obj.edit11:setLeft(80);
    obj.edit11:setTop(275);
    obj.edit11:setWidth(18);
    obj.edit11:setHeight(16);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setFontColor("black");
    obj.edit11:setFontSize(9);
    obj.edit11:setTransparent(false);
    obj.edit11:setField("TradicoesMagicasPreparadas");
    obj.edit11:setName("edit11");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle1);
    obj.edit12:setLeft(163);
    obj.edit12:setTop(275);
    obj.edit12:setWidth(18);
    obj.edit12:setHeight(16);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontColor("black");
    obj.edit12:setFontSize(9);
    obj.edit12:setTransparent(false);
    obj.edit12:setField("TradicoesMagicasEspontaneas");
    obj.edit12:setName("edit12");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle1);
    obj.edit13:setLeft(323);
    obj.edit13:setTop(90);
    obj.edit13:setWidth(45);
    obj.edit13:setHeight(30);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setFontColor("black");
    obj.edit13:setFontSize(14);
    obj.edit13:setTransparent(false);
    obj.edit13:setField("EspacoMagiaDiaTruqueNivel");
    obj.edit13:setName("edit13");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.rectangle1);
    obj.edit14:setLeft(374);
    obj.edit14:setTop(54);
    obj.edit14:setWidth(44);
    obj.edit14:setHeight(28);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontColor("black");
    obj.edit14:setFontSize(14);
    obj.edit14:setTransparent(false);
    obj.edit14:setField("EspacoMagiaCima1");
    obj.edit14:setName("edit14");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.rectangle1);
    obj.edit15:setLeft(424);
    obj.edit15:setTop(54);
    obj.edit15:setWidth(44);
    obj.edit15:setHeight(28);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontColor("black");
    obj.edit15:setFontSize(14);
    obj.edit15:setTransparent(false);
    obj.edit15:setField("EspacoMagiaCima2");
    obj.edit15:setName("edit15");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.rectangle1);
    obj.edit16:setLeft(474);
    obj.edit16:setTop(54);
    obj.edit16:setWidth(44);
    obj.edit16:setHeight(28);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setFontColor("black");
    obj.edit16:setFontSize(14);
    obj.edit16:setTransparent(false);
    obj.edit16:setField("EspacoMagiaCima3");
    obj.edit16:setName("edit16");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.rectangle1);
    obj.edit17:setLeft(524);
    obj.edit17:setTop(54);
    obj.edit17:setWidth(44);
    obj.edit17:setHeight(28);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setFontColor("black");
    obj.edit17:setFontSize(14);
    obj.edit17:setTransparent(false);
    obj.edit17:setField("EspacoMagiaCima4");
    obj.edit17:setName("edit17");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.rectangle1);
    obj.edit18:setLeft(574);
    obj.edit18:setTop(54);
    obj.edit18:setWidth(44);
    obj.edit18:setHeight(28);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setFontColor("black");
    obj.edit18:setFontSize(14);
    obj.edit18:setTransparent(false);
    obj.edit18:setField("EspacoMagiaCima5");
    obj.edit18:setName("edit18");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.rectangle1);
    obj.edit19:setLeft(625);
    obj.edit19:setTop(54);
    obj.edit19:setWidth(44);
    obj.edit19:setHeight(28);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setFontColor("black");
    obj.edit19:setFontSize(14);
    obj.edit19:setTransparent(false);
    obj.edit19:setField("EspacoMagiaCima6");
    obj.edit19:setName("edit19");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.rectangle1);
    obj.edit20:setLeft(675);
    obj.edit20:setTop(54);
    obj.edit20:setWidth(44);
    obj.edit20:setHeight(28);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontColor("black");
    obj.edit20:setFontSize(14);
    obj.edit20:setTransparent(false);
    obj.edit20:setField("EspacoMagiaCima7");
    obj.edit20:setName("edit20");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.rectangle1);
    obj.edit21:setLeft(725);
    obj.edit21:setTop(54);
    obj.edit21:setWidth(44);
    obj.edit21:setHeight(28);
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setFontColor("black");
    obj.edit21:setFontSize(14);
    obj.edit21:setTransparent(false);
    obj.edit21:setField("EspacoMagiaCima8");
    obj.edit21:setName("edit21");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.rectangle1);
    obj.edit22:setLeft(775);
    obj.edit22:setTop(54);
    obj.edit22:setWidth(44);
    obj.edit22:setHeight(28);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setFontColor("black");
    obj.edit22:setFontSize(14);
    obj.edit22:setTransparent(false);
    obj.edit22:setField("EspacoMagiaCima9");
    obj.edit22:setName("edit22");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle1);
    obj.edit23:setLeft(825);
    obj.edit23:setTop(54);
    obj.edit23:setWidth(44);
    obj.edit23:setHeight(28);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setFontColor("black");
    obj.edit23:setFontSize(14);
    obj.edit23:setTransparent(false);
    obj.edit23:setField("EspacoMagiaCima10");
    obj.edit23:setName("edit23");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.rectangle1);
    obj.edit24:setLeft(374);
    obj.edit24:setTop(98);
    obj.edit24:setWidth(44);
    obj.edit24:setHeight(26);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setFontColor("black");
    obj.edit24:setFontSize(14);
    obj.edit24:setTransparent(false);
    obj.edit24:setField("EspacoMagiaBaixo1");
    obj.edit24:setName("edit24");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle1);
    obj.edit25:setLeft(424);
    obj.edit25:setTop(98);
    obj.edit25:setWidth(44);
    obj.edit25:setHeight(26);
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setFontColor("black");
    obj.edit25:setFontSize(14);
    obj.edit25:setTransparent(false);
    obj.edit25:setField("EspacoMagiaBaixo2");
    obj.edit25:setName("edit25");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.rectangle1);
    obj.edit26:setLeft(474);
    obj.edit26:setTop(98);
    obj.edit26:setWidth(44);
    obj.edit26:setHeight(26);
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setFontColor("black");
    obj.edit26:setFontSize(14);
    obj.edit26:setTransparent(false);
    obj.edit26:setField("EspacoMagiaBaixo3");
    obj.edit26:setName("edit26");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.rectangle1);
    obj.edit27:setLeft(524);
    obj.edit27:setTop(98);
    obj.edit27:setWidth(44);
    obj.edit27:setHeight(26);
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setFontColor("black");
    obj.edit27:setFontSize(14);
    obj.edit27:setTransparent(false);
    obj.edit27:setField("EspacoMagiaBaixo4");
    obj.edit27:setName("edit27");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.rectangle1);
    obj.edit28:setLeft(574);
    obj.edit28:setTop(98);
    obj.edit28:setWidth(44);
    obj.edit28:setHeight(26);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setFontColor("black");
    obj.edit28:setFontSize(14);
    obj.edit28:setTransparent(false);
    obj.edit28:setField("EspacoMagiaBaixo5");
    obj.edit28:setName("edit28");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.rectangle1);
    obj.edit29:setLeft(625);
    obj.edit29:setTop(98);
    obj.edit29:setWidth(44);
    obj.edit29:setHeight(26);
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setFontColor("black");
    obj.edit29:setFontSize(14);
    obj.edit29:setTransparent(false);
    obj.edit29:setField("EspacoMagiaBaixo6");
    obj.edit29:setName("edit29");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.rectangle1);
    obj.edit30:setLeft(675);
    obj.edit30:setTop(98);
    obj.edit30:setWidth(44);
    obj.edit30:setHeight(26);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setFontColor("black");
    obj.edit30:setFontSize(14);
    obj.edit30:setTransparent(false);
    obj.edit30:setField("EspacoMagiaBaixo7");
    obj.edit30:setName("edit30");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.rectangle1);
    obj.edit31:setLeft(725);
    obj.edit31:setTop(98);
    obj.edit31:setWidth(44);
    obj.edit31:setHeight(26);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setFontColor("black");
    obj.edit31:setFontSize(14);
    obj.edit31:setTransparent(false);
    obj.edit31:setField("EspacoMagiaBaixo8");
    obj.edit31:setName("edit31");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.rectangle1);
    obj.edit32:setLeft(775);
    obj.edit32:setTop(98);
    obj.edit32:setWidth(44);
    obj.edit32:setHeight(26);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setFontColor("black");
    obj.edit32:setFontSize(14);
    obj.edit32:setTransparent(false);
    obj.edit32:setField("EspacoMagiaBaixo9");
    obj.edit32:setName("edit32");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.rectangle1);
    obj.edit33:setLeft(825);
    obj.edit33:setTop(98);
    obj.edit33:setWidth(44);
    obj.edit33:setHeight(26);
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setFontColor("black");
    obj.edit33:setFontSize(14);
    obj.edit33:setTransparent(false);
    obj.edit33:setField("EspacoMagiaBaixo10");
    obj.edit33:setName("edit33");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.rectangle1);
    obj.edit34:setLeft(32);
    obj.edit34:setTop(327);
    obj.edit34:setWidth(250);
    obj.edit34:setHeight(20);
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setFontColor("black");
    obj.edit34:setFontSize(14);
    obj.edit34:setTransparent(false);
    obj.edit34:setField("TruquesNome1");
    obj.edit34:setName("edit34");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.rectangle1);
    obj.edit35:setLeft(32);
    obj.edit35:setTop(348);
    obj.edit35:setWidth(207);
    obj.edit35:setHeight(35);
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setFontColor("black");
    obj.edit35:setFontSize(14);
    obj.edit35:setTransparent(false);
    obj.edit35:setField("TruquesDescricao1");
    obj.edit35:setName("edit35");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.rectangle1);
    obj.edit36:setLeft(243);
    obj.edit36:setTop(358);
    obj.edit36:setWidth(57);
    obj.edit36:setHeight(16);
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setFontColor("black");
    obj.edit36:setFontSize(14);
    obj.edit36:setTransparent(false);
    obj.edit36:setField("TruquesAcoes1");
    obj.edit36:setName("edit36");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.rectangle1);
    obj.edit37:setLeft(283);
    obj.edit37:setTop(335);
    obj.edit37:setWidth(17);
    obj.edit37:setHeight(12);
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setFontColor("black");
    obj.edit37:setFontSize(14);
    obj.edit37:setTransparent(false);
    obj.edit37:setField("TruquesPreparados1");
    obj.edit37:setName("edit37");

    obj.checkBox9 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.rectangle1);
    obj.checkBox9:setLeft(239);
    obj.checkBox9:setTop(370);
    obj.checkBox9:setField("VSM1Truques1");
    obj.checkBox9:setName("checkBox9");

    obj.checkBox10 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.rectangle1);
    obj.checkBox10:setLeft(259);
    obj.checkBox10:setTop(370);
    obj.checkBox10:setField("VSM2Truques1");
    obj.checkBox10:setName("checkBox10");

    obj.checkBox11 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.rectangle1);
    obj.checkBox11:setLeft(278);
    obj.checkBox11:setTop(370);
    obj.checkBox11:setField("VSM3Truques1");
    obj.checkBox11:setName("checkBox11");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmPATHFINDER5_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmPATHFINDER5_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmPATHFINDER5_svg = {
    newEditor = newfrmPATHFINDER5_svg, 
    new = newfrmPATHFINDER5_svg, 
    name = "frmPATHFINDER5_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmPATHFINDER5_svg = _frmPATHFINDER5_svg;
Firecast.registrarForm(_frmPATHFINDER5_svg);

return _frmPATHFINDER5_svg;
