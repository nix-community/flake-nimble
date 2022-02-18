{
  description = ''Advanced Encryption Standard, Rijndael Algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimAES-master".type = "github";
  inputs."nimAES-master".owner = "riinr";
  inputs."nimAES-master".repo = "flake-nimble";
  inputs."nimAES-master".ref = "flake-pinning";
  inputs."nimAES-master".dir = "nimpkgs/n/nimAES/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}