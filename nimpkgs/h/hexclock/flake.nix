{
  description = ''Hex clock made in SDL and Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."hexclock-master".type = "github";
  inputs."hexclock-master".owner = "riinr";
  inputs."hexclock-master".repo = "flake-nimble";
  inputs."hexclock-master".ref = "flake-pinning";
  inputs."hexclock-master".dir = "nimpkgs/h/hexclock/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}