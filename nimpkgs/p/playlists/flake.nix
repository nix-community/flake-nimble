{
  description = ''Nim library for parsing PLS, M3U, and XSPF playlist files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."playlists-master".type = "github";
  inputs."playlists-master".owner = "riinr";
  inputs."playlists-master".repo = "flake-nimble";
  inputs."playlists-master".ref = "flake-pinning";
  inputs."playlists-master".dir = "nimpkgs/p/playlists/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}