{
  description = ''Financial Library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimfinlib-master".type = "github";
  inputs."nimfinlib-master".owner = "riinr";
  inputs."nimfinlib-master".repo = "flake-nimble";
  inputs."nimfinlib-master".ref = "flake-pinning";
  inputs."nimfinlib-master".dir = "nimpkgs/n/nimfinlib/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
