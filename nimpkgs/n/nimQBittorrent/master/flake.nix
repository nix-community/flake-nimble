{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimQBittorrent-master.flake = false;
  inputs.src-nimQBittorrent-master.type = "github";
  inputs.src-nimQBittorrent-master.owner = "faulander";
  inputs.src-nimQBittorrent-master.repo = "nimQBittorrent";
  inputs.src-nimQBittorrent-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimQBittorrent-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimQBittorrent-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimQBittorrent-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}