{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimQBittorrent-v0_1_2.flake = false;
  inputs.src-nimQBittorrent-v0_1_2.type = "github";
  inputs.src-nimQBittorrent-v0_1_2.owner = "faulander";
  inputs.src-nimQBittorrent-v0_1_2.repo = "nimQBittorrent";
  inputs.src-nimQBittorrent-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-nimQBittorrent-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimQBittorrent-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimQBittorrent-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimQBittorrent-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}