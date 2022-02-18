{
  description = ''Nim Hessian Serialization Library encodes/decodes data into the Hessian binary protocol'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nhsl-master".type = "github";
  inputs."nhsl-master".owner = "riinr";
  inputs."nhsl-master".repo = "flake-nimble";
  inputs."nhsl-master".ref = "flake-pinning";
  inputs."nhsl-master".dir = "nimpkgs/n/nhsl/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}