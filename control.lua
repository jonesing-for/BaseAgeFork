function disableSurfaceList(player)
  player.game_view_settings.show_surface_list = false
end

script.on_init(function()
  for _, player in pairs(game.players) do
    disableSurfaceList(player)
  end
end)
script.on_event(defines.events.on_player_created, function(event)
  local player = game.get_player(event.player_index)
  disableSurfaceList(player)
end)