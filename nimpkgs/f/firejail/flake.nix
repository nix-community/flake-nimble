{
  description = ''Firejail wrapper for Nim, Isolate your Production App before its too late!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."firejail-master".type = "github";
  inputs."firejail-master".owner = "riinr";
  inputs."firejail-master".repo = "flake-nimble";
  inputs."firejail-master".ref = "flake-pinning";
  inputs."firejail-master".dir = "nimpkgs/f/firejail/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}