{
  description = ''Hi Fidelity Rendering Engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimagg-master".type = "github";
  inputs."nimagg-master".owner = "riinr";
  inputs."nimagg-master".repo = "flake-nimble";
  inputs."nimagg-master".ref = "flake-pinning";
  inputs."nimagg-master".dir = "nimpkgs/n/nimagg/master";
  inputs."nimagg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimagg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}