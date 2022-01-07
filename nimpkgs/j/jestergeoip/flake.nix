{
  description = ''
    A Jester web plugin that determines geographic information for each web request via API. Uses sqlite3 for a cache.
  '';
  inputs.src-jestergeoip.url = "https://github.com/JohnAD/jestergeoip";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
