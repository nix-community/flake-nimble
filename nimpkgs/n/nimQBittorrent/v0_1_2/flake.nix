{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';
  inputs.src-nimQBittorrent-v0_1_2.flake = false;
  inputs.src-nimQBittorrent-v0_1_2.type = "github";
  inputs.src-nimQBittorrent-v0_1_2.owner = "faulander";
  inputs.src-nimQBittorrent-v0_1_2.repo = "nimQBittorrent";
  inputs.src-nimQBittorrent-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-nimQBittorrent-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimQBittorrent-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimQBittorrent-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}