{
  description = ''A library to help you write rest APIs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimbler-master".type = "github";
  inputs."nimbler-master".owner = "riinr";
  inputs."nimbler-master".repo = "flake-nimble";
  inputs."nimbler-master".ref = "flake-pinning";
  inputs."nimbler-master".dir = "nimpkgs/n/nimbler/master";
  inputs."nimbler-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbler-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}