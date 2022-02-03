{
  description = ''Nim library for parsing PLS, M3U, and XSPF playlist files'';
  inputs.src-playlists-master.flake = false;
  inputs.src-playlists-master.type = "github";
  inputs.src-playlists-master.owner = "achesak";
  inputs.src-playlists-master.repo = "nim-playlists";
  inputs.src-playlists-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-playlists-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-playlists-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-playlists-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}