{
  description = ''Marc21 parser for Nimlang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."NimMarc-master".type = "github";
  inputs."NimMarc-master".owner = "riinr";
  inputs."NimMarc-master".repo = "flake-nimble";
  inputs."NimMarc-master".ref = "flake-pinning";
  inputs."NimMarc-master".dir = "nimpkgs/n/NimMarc/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}