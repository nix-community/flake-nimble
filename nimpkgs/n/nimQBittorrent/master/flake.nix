{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';
  inputs.src-nimQBittorrent-master.flake = false;
  inputs.src-nimQBittorrent-master.type = "github";
  inputs.src-nimQBittorrent-master.owner = "faulander";
  inputs.src-nimQBittorrent-master.repo = "nimQBittorrent";
  inputs.src-nimQBittorrent-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimQBittorrent-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimQBittorrent-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimQBittorrent-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}