modGuid = "000eccce-61eb-4166-b8a0-1a319bc8de12"
subClassGuid = "20babe5d-c954-45a0-ae42-d9b6b5139c9e"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    DirgeSubclass = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "bard",
      subClassName = "Dirge"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end