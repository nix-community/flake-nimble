{
  description = ''A nimterop wrapper for the nestegg portable webm video demuxer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nestegg-master".type = "github";
  inputs."nestegg-master".owner = "riinr";
  inputs."nestegg-master".repo = "flake-nimble";
  inputs."nestegg-master".ref = "flake-pinning";
  inputs."nestegg-master".dir = "nimpkgs/n/nestegg/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}