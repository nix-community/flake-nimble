{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimqbittorrent-master.flake = false;
  inputs.src-nimqbittorrent-master.type = "github";
  inputs.src-nimqbittorrent-master.owner = "faulander";
  inputs.src-nimqbittorrent-master.repo = "nimQBittorrent";
  inputs.src-nimqbittorrent-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimqbittorrent-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqbittorrent-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimqbittorrent-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}