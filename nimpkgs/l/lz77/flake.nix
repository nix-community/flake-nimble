{
  description = ''Implementation of various LZ77 algorithms'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."lz77-master".type = "github";
  inputs."lz77-master".owner = "riinr";
  inputs."lz77-master".repo = "flake-nimble";
  inputs."lz77-master".ref = "flake-pinning";
  inputs."lz77-master".dir = "nimpkgs/l/lz77/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}