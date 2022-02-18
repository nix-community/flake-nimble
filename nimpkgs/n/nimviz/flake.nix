{
  description = ''A wrapper for the graphviz c api.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimviz-master".type = "github";
  inputs."nimviz-master".owner = "riinr";
  inputs."nimviz-master".repo = "flake-nimble";
  inputs."nimviz-master".ref = "flake-pinning";
  inputs."nimviz-master".dir = "nimpkgs/n/nimviz/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}