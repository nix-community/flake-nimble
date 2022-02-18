{
  description = ''Shebang frontend for running nim code as scripts. Does not require .nim extensions.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimrun-master".type = "github";
  inputs."nimrun-master".owner = "riinr";
  inputs."nimrun-master".repo = "flake-nimble";
  inputs."nimrun-master".ref = "flake-pinning";
  inputs."nimrun-master".dir = "nimpkgs/n/nimrun/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}