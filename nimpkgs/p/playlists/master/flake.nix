{
  description = ''Nim library for parsing PLS, M3U, and XSPF playlist files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-playlists-master.flake = false;
  inputs.src-playlists-master.type = "github";
  inputs.src-playlists-master.owner = "achesak";
  inputs.src-playlists-master.repo = "nim-playlists";
  inputs.src-playlists-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-playlists-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-playlists-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-playlists-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}