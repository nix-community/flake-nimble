{
  description = ''A library for cleanly creating an object or tuple based on another object or tuple'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."basedOn-master".type = "github";
  inputs."basedOn-master".owner = "riinr";
  inputs."basedOn-master".repo = "flake-nimble";
  inputs."basedOn-master".ref = "flake-pinning";
  inputs."basedOn-master".dir = "nimpkgs/b/basedOn/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}