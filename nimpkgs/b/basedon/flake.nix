{
  description = ''A library for cleanly creating an object or tuple based on another object or tuple'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."basedon-master".type = "github";
  inputs."basedon-master".owner = "riinr";
  inputs."basedon-master".repo = "flake-nimble";
  inputs."basedon-master".ref = "flake-pinning";
  inputs."basedon-master".dir = "nimpkgs/b/basedon/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
