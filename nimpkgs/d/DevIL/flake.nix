{
  description = ''Wrapper for the DevIL image library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."DevIL-master".type = "github";
  inputs."DevIL-master".owner = "riinr";
  inputs."DevIL-master".repo = "flake-nimble";
  inputs."DevIL-master".ref = "flake-pinning";
  inputs."DevIL-master".dir = "nimpkgs/d/DevIL/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}