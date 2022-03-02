{
  description = ''HQ Trivia API wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimhq-master".type = "github";
  inputs."nimhq-master".owner = "riinr";
  inputs."nimhq-master".repo = "flake-nimble";
  inputs."nimhq-master".ref = "flake-pinning";
  inputs."nimhq-master".dir = "nimpkgs/n/nimhq/master";
  inputs."nimhq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}