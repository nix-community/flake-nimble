{
  description = ''Typelists in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."typelists-master".type = "github";
  inputs."typelists-master".owner = "riinr";
  inputs."typelists-master".repo = "flake-nimble";
  inputs."typelists-master".ref = "flake-pinning";
  inputs."typelists-master".dir = "nimpkgs/t/typelists/master";
  inputs."typelists-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typelists-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}