{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimqbittorrent-v0_1_2.flake = false;
  inputs.src-nimqbittorrent-v0_1_2.type = "github";
  inputs.src-nimqbittorrent-v0_1_2.owner = "faulander";
  inputs.src-nimqbittorrent-v0_1_2.repo = "nimQBittorrent";
  inputs.src-nimqbittorrent-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimqbittorrent-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimqbittorrent-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimqbittorrent-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}