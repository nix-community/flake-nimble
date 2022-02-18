{
  description = ''Nim implementation of the Bittorrent ascii serialization protocol'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bped-master".type = "github";
  inputs."bped-master".owner = "riinr";
  inputs."bped-master".repo = "flake-nimble";
  inputs."bped-master".ref = "flake-pinning";
  inputs."bped-master".dir = "nimpkgs/b/bped/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}