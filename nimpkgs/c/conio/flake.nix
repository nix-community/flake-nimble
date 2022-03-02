{
  description = ''.NET-inspired lightweight terminal library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."conio-master".type = "github";
  inputs."conio-master".owner = "riinr";
  inputs."conio-master".repo = "flake-nimble";
  inputs."conio-master".ref = "flake-pinning";
  inputs."conio-master".dir = "nimpkgs/c/conio/master";
  inputs."conio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."conio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}