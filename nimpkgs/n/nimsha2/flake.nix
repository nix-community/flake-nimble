{
  description = ''Secure Hash Algorithm - 2, [224, 256, 384, and 512 bits]'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimsha2-master".type = "github";
  inputs."nimsha2-master".owner = "riinr";
  inputs."nimsha2-master".repo = "flake-nimble";
  inputs."nimsha2-master".ref = "flake-pinning";
  inputs."nimsha2-master".dir = "nimpkgs/n/nimsha2/master";
  inputs."nimsha2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}