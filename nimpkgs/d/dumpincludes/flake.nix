{
  description = ''See where your exe size comes from.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dumpincludes-master".type = "github";
  inputs."dumpincludes-master".owner = "riinr";
  inputs."dumpincludes-master".repo = "flake-nimble";
  inputs."dumpincludes-master".ref = "flake-pinning";
  inputs."dumpincludes-master".dir = "nimpkgs/d/dumpincludes/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}