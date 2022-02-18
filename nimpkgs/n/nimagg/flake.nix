{
  description = ''Hi Fidelity Rendering Engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimAGG-master".type = "github";
  inputs."nimAGG-master".owner = "riinr";
  inputs."nimAGG-master".repo = "flake-nimble";
  inputs."nimAGG-master".ref = "flake-pinning";
  inputs."nimAGG-master".dir = "nimpkgs/n/nimAGG/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}