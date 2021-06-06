
function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end
function KANSO() end
function setvalue(address,flags,value) KANSO('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function libBase(offset, type, value, name) gg.setValues({[1] = {address = gg.getRangesList('libUE4.so')[1].start + offset, flags = type, value = value}}) gg.toast(name .. '') end
function setvalue(address,flags,value)  local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function setvalue(address,flags,value)senior={}senior[1]={}senior[1].address=address senior[1].flags=flags senior[1].value=value gg.setValues(senior)end
function JERRY(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function JERRYGC(JERRYSZ, JERRYxx) for x = 1, #(JERRYxx) do xgpy = JERRYSZ + JERRYxx[x]["NᴏᴛXOғғ"] xglx = JERRYxx[x]["JERRYType"] xgsz = JERRYxx[x]["JERRYfind"] xgdj = JERRYxx[x]["NᴏᴛXFʀᴇᴇᴢᴇ"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xJERRYxx(XJERRYxxX) gg.clearResults() gg.setRanges(XJERRYxxX[1]["NᴏᴛXRᴀɴɢᴇ"]) gg.searchNumber(XJERRYxxX[3]["JERRYfind"], XJERRYxxX[3]["JERRYType"]) if gg.getResultCount() == 0 then gg.toast("\n" .. XJERRYxxX[2]["JERRYsearch"] .. " \n Vᴀʟᴜᴇ Nᴏᴛ Fᴏᴜɴᴅ") else gg.refineNumber(XJERRYxxX[3]["JERRYfind"], XJERRYxxX[3]["JERRYType"]) gg.refineNumber(XJERRYxxX[3]["JERRYfind"], XJERRYxxX[3]["JERRYType"]) gg.refineNumber(XJERRYxxX[3]["JERRYfind"], XJERRYxxX[3]["JERRYType"]) gg.refineNumber(XJERRYxxX[3]["JERRYfind"], XJERRYxxX[3]["JERRYType"]) if gg.getResultCount() == 0 then gg.toast("\n" .. XJERRYxxX[2]["JERRYsearch"] .. " \nVᴀʟᴜᴇ Nᴏᴛ Fᴏᴜɴᴅ") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(XJERRYxxX) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + XJERRYxxX[v]["NᴏᴛXOғғ"] pysz[1].flags = XJERRYxxX[v]["JERRYType"] JERRYSZ = gg.getValues(pysz) pdpd = XJERRYxxX[v]["JERRYRefind"] .. ";" .. JERRYSZ[1].value szpd = JERRY(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then JERRYSZ = sl[i].address JERRYGC(JERRYSZ, JERRYxx) end end if xgjg == true then gg.toast("\n" .. XJERRYxxX[2]["JERRYsearch"] .. "\n Vᴀʟᴜᴇ Fᴏᴜɴᴅ" .. xgsl .. "") else gg.toast("\n" .. XJERRYxxX[2]["JERRYsearch"] .. "\n Vᴀʟᴜᴇ Nᴏᴛ Fᴏᴜɴᴅ") end end end end function NotPointer(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then gg.toast("\n Aᴄᴛɪᴠᴀᴛᴇᴅ Sᴜᴄᴄᴇss \n Vᴀʟᴜᴇ Fᴏᴜɴᴅ "..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type  t[#t].value = w[1]  if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("\n Aᴄᴛɪᴠᴀᴛᴇᴅ Fᴀɪʟᴇᴅ\n Vᴀʟᴜᴇ Nᴏᴛ Fᴏᴜɴᴅ", false) return false end else gg.toast("\n Aᴄᴛɪᴠᴀᴛᴇᴅ Fᴀɪʟᴇᴅ\n Vᴀʟᴜᴇ Nᴏᴛ Fᴏᴜɴᴅ") return false  end end local Aloossh = gg  function JERRYwrite(address,flags,value)  local aliRefind={}  aliRefind[1]={}  aliRefind[1].address=address  aliRefind[1].flags=flags  aliRefind[1].value=value  gg.setValues(aliRefind)  end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

------[[[ ❌ ANTI LOGS SYSTEM ❌ ]]]-------

gg.toast("▒▒▒▒▒")
gg.sleep(260)
gg.toast("▒▒▒▒▒▒")
gg.sleep(260)
gg.toast("▒▒▒▒▒▒▒")
gg.sleep(260)
gg.toast("▒▒▒▒▒▒▒▒")
gg.sleep(260)
gg.toast("▒▒▒▒▒▒▒▒▒")
gg.sleep(260)
gg.toast("▒▒▒▒▒▒▒▒▒▒")
gg.sleep(260)
gg.toast("▒▒▒▒▒▒▒▒▒▒▒")
gg.sleep(260)
gg.toast("▒▒▒▒▒▒▒▒▒▒▒▒")
gg.sleep(260)


gg.alert("‼️ AnonyMods Loader Açılıyor Beklemede Kal ve Cihazını Kapatma ‼️")

gg.toast("■□□□□□□10%")
gg.sleep(300)
gg.toast("■■□□□□□20%")
gg.sleep(300)
gg.toast("■■■□□□□40%")
gg.sleep(300)
gg.toast("■■■■□□□60%")
gg.sleep(300)
gg.toast("■■■■■□□80%")
gg.sleep(300)
gg.toast("■■■■■■□90%")
gg.sleep(300)
gg.toast("■■■■■■■100%")
gg.sleep(300)
gg.setVisible(true)
gg.alert("🙋 WELCOME TOO \n‼️️ ANONYMODS LOADER ‼️")
HOME = 1
function HOME()
MX = gg.choice({

       '╔⟦💍 FLASH NO LAG 💍⟧',
       '╔⟦🚁 HIZLI PARAŞÜT 🚁⟧',
       '╔⟦🐢 AĞIR ÇEKİM [AKM,M24] 🐢⟧',
       '╔⟦🎗️ LESS RECOİL 🎗️⟧',
       '╔⟦👽 SİTSCOP PREMİUM 👽⟧',
       '╔⟦💀 HEADSHOT POWER 💀⟧',
       '╔⟦🧨 HIZLI MERMİLER POWER 🧨⟧',
       '╔⟦📺 TABLET MODU 📺⟧',
       '╔⟦😈 HIZLI YERE İNİŞ 😈⟧',
       '╔⟦⏫ ARAÇLARI UÇUR ⏫⟧',
       '╔⟦❌ LOADERİ KAPAT ❌⟧',
}, nil, "\n•──────────🔸──────────• \n👩‍💻〘 • 🌌 ⚔ ANONYMODS FREE LOADER 🌌 \n┗❏〘 • S19 NEW LOADER ☆  \n ┗❏〘 • Son Kullanım Tarihi I|[ 00:00 AM ]|I|[ 6 Haziran'da ]|I  \n•──────────🔸──────────• \n\n ")

if MX == nil then else
if MX == 1 then flah() end
if MX == 2 then PARASUT() end
if MX == 3 then YAVAS() end
if MX == 4 then RECO() end
if MX == 5 then SCOP() end
if MX == 6 then HEADSHOT() end
if MX == 7 then KURSUN() end
if MX == 8 then TABLET() end
if MX == 9 then HIZLIATLA() end
if MX == 10 then UAZKARTAL() end
if MX == 11 then EXIT() end
end
PUBGMH = -1
end




function flah()
  if sflash == off then
  gg.alert("⚠️ Oku ⚠️: ‼️ Full Flashla oynamak için 6GB RAM sahip olman gerekiyor ‼️,\n             ‼️ Eğer 4GB RAM'in varsa Flashla Maximum 5000ᴍ Gidebilirsiniz ‼️")
  so=gg.getRangesList("libUE4.so")[1].start 
  py=62073428 
  setvalue(so+py,16,290) 
  so=gg.getRangesList("libUE4.so")[1].start 
  py=47976392 
  setvalue(so+py,16,0) 
  so=gg.getRangesList("libUE4.so")[1].start 
  py=0x13C4A54 
  setvalue(so+py,16,0) 
  so=gg.getRangesList("libUE4.so")[1].start
  py=65970468
  setvalue(so+py,16,9.3)
  so=gg.getRangesList("libUE4.so")[1].start 
  py=58795692
  setvalue(so+py,16,0)
  gg.clearResults() 
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
  save1 = gg.getResults(1401) 
  gg.editAll("4,525,216,907,473,673,257", gg.TYPE_QWORD) 
  gg.clearResults() 
  gg.setRanges(16384) 
  gg.searchNumber("-1,328,550,408,728,725,571", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
  save2 = gg.getResults(1401) 
  gg.editAll("-1,328,550,408,576,460,390", gg.TYPE_QWORD) 
  gg.clearResults() 
  gg.searchNumber("-1505254313802431360", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  save3 = gg.getResults(1401)
  gg.editAll("-1505254313804899999", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(16384) 
  gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
  save4 = gg.getResults(1401) 
  gg.editAll("-1296744149264269342", gg.TYPE_QWORD) 
  gg.clearResults()
  so=gg.getRangesList("libUE4.so")[1].start
  py=59417352
  setvalue(so+py,16,5.88545355e-44)
  qmnb = {
  {["memory"] = gg.REGION_CODE_APP},
  {["name"] = "Tʜᴇ Anony"},
  {["value"] = -1294492350099208232, ["type"] = 32},
  {["lv"] = -1243808467536295979, ["offset"] = 12, ["type"] = 32},
  {["lv"] = -2026584643939263799, ["offset"] = 16, ["type"] = 32},
  {["lv"] = -2026567051753215288, ["offset"] = 24, ["type"] = 32},
  {["lv"] = -1243826098341410288, ["offset"] = 32, ["type"] = 32},
  {["lv"] = -1292099812749145408, ["offset"] = 36, ["type"] = 32},
  {["lv"] = -1291800745597629936, ["offset"] = 40, ["type"] = 32},
  {["lv"] = -1292416472109114864, ["offset"] = 44, ["type"] = 32},
  {["lv"] = -2064618950178608624, ["offset"] = 48, ["type"] = 32},
  }
  qmxg = {
  {["value"] = 0, ["offset"] = 12, ["type"] = 16},
  {["value"] = 0, ["offset"] = 16, ["type"] = 16},
  {["value"] = 0, ["offset"] = 24, ["type"] = 16},
  {["value"] = 0, ["offset"] = 32, ["type"] = 16},
  {["value"] = 0, ["offset"] = 36, ["type"] = 16},
  {["value"] = 0, ["offset"] = 40, ["type"] = 16},
  {["value"] = 0, ["offset"] = 44, ["type"] = 16},
  {["value"] = 0, ["offset"] = 48, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.setVisible(false)
  gg.clearResults()
  so=gg.getRangesList("libUE4.so")[1].start
  py=20328468
  setvalue(so+py,16,0)
  gg.clearResults()
  so=gg.getRangesList("libUE4.so")[1].start
  py=20328520
  setvalue(so+py,16,0)
  gg.clearResults()
  so=gg.getRangesList("libUE4.so")[1].start
  py=20328524
  setvalue(so+py,16,0)
  gg.setVisible(false)
  gg.clearResults() 
  gg.toast("🏇 Flash Aktif ʙʏ Tʜᴇ Anony")
  sflash = on
else
  so=gg.getRangesList("libUE4.so")[1].start
  py=65970468
  setvalue(so+py,16,10.90734863281)
  so=gg.getRangesList("libUE4.so")[1].start 
  py=58795692
  setvalue(so+py,16, -1.23824239e28)
  gg.setValues(save1)
  gg.setValues(save2)
  gg.setValues(save3)
  gg.setValues(save4)
  gg.clearResults()
  so=gg.getRangesList("libUE4.so")[1].start
  py=59417352
  setvalue(so+py,16,-5.84305429e27)
  gg.clearResults() 
  gg.toast("🐴 Flash Kapalı ʙʏ Tʜᴇ Anony")
  sflash = off
end
end

function PARASUT()
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,477,699,789", gg.TYPE_QWORD)
gg.alert(" 👽 AnonyMods: Hızlı Paraşüt Aktif 👽 ")
end

function YAVAS()
gg.searchNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,414,147,695", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4848124999984742400", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-4767057191527907328", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("18.38787841797;0.53867292404;-3.42232513428;1.77635705e-15:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("18.38787841797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2805)
gg.editAll("130.5419921875", gg.TYPE_FLOAT)
gg.alert("👽 AnonyMods: Ağır Çekim Silahlar Aktif 👽  ")
end

function RECO()
so=gg.getRangesList("libUE4.so")[1].start 
py=0x13C2694
setvalue(so+py,16,0) 
so = gg.getRangesList('libUE4.so')[1].start
py = 0x1428524
setvalue(so+py,16,0)
so=gg.getRangesList ('libUE4.so') [1] .start
py=0x1426D20 
setvalue(so+py,4,0)
gg.clearResults()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1428A68
setvalue(so+py, 16,0)
gg.alert("👽 AnonyMods: Silahlar artık sekmiyor Aktif 👽  ")
end

function SCOP()
gg.searchNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4138667321167981973", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("-4767057191527907328", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-4767057191527907328", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-4767057191527907328", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-4767057191653227520", gg.TYPE_QWORD)
gg.alert("👽 AnonyMods: Sit Scop Aktif 👽 ")
end

function HEADSHOT()
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("9.1022205e-38;0.0001;9.1025635e-38::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-7.1611644e24;0.0001;1.1297201e-37::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-125", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("180;250", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("180;250", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.alert("👽 AnonyMods: HEADSHOT POWER Aktif 👽  ")
end

function KURSUN()
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("0", gg.TYPE_DWORD)
gg.alert("  👽 AnonyMods: Hızlı Mermiler Aktif 👽")
end

function TABLET()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A05C20
setvalue(so+py, 16,240)
gg.alert("  👽 AnonyMods: Tablet Modu Aktif 👽")
end

function HIZLIATLA()
gg.searchNumber("200;200;1;1::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(21)
gg.editAll("4412", gg.TYPE_FLOAT)
gg.alert(" 👽 AnonyMods: Hızlı Yere İniş Aktif 👽")
end

function UAZKARTAL()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.getResults(61)
gg.editAll("20000", gg.TYPE_FLOAT)
gg.toast(" 👽 AnonyMods: Tüm Araçlar Uçuyor Aktif 👽")
end






function EXIT()
gg.alert("🧡❤️💛💚💙 Loader Versiyon 8.1 🧡❤️💛💚💙 ")
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end
while true do
  if gg.isVisible(true) then
    MX = 1
    gg.setVisible(false)
  end
  if MX == 1 then
    HOME()
  end
end