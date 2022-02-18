{
  description = ''OS Utils for Nim, simple tiny but useful procs for OS. Turn Display OFF and set Process Name.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."osutil-master".type = "github";
  inputs."osutil-master".owner = "riinr";
  inputs."osutil-master".repo = "flake-nimble";
  inputs."osutil-master".ref = "flake-pinning";
  inputs."osutil-master".dir = "nimpkgs/o/osutil/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}