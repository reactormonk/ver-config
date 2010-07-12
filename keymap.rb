VER.startup_hook do
  module VER

    minor_mode :control do
      handler Methods::Control
      map [:ex, :syntax], '<Control-y>s'

      handler VER::Methods::SearchAndReplace
      map :query, ':s'
    end

    minor_mode :select do
      map :query, ':s'
    end

  end
end

