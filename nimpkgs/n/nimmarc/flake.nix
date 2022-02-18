{
  description = ''Marc21 parser for Nimlang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimmarc-master".type = "github";
  inputs."nimmarc-master".owner = "riinr";
  inputs."nimmarc-master".repo = "flake-nimble";
  inputs."nimmarc-master".ref = "flake-pinning";
  inputs."nimmarc-master".dir = "nimpkgs/n/nimmarc/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
