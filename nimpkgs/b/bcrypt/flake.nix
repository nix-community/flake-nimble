{
  description = ''Wraps the bcrypt (blowfish) library for creating encrypted hashes (useful for passwords)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bcrypt-master".type = "github";
  inputs."bcrypt-master".owner = "riinr";
  inputs."bcrypt-master".repo = "flake-nimble";
  inputs."bcrypt-master".ref = "flake-pinning";
  inputs."bcrypt-master".dir = "nimpkgs/b/bcrypt/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}