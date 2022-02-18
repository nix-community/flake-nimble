{
  description = ''Wrapper for libnetpbm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."netpbm-master".type = "github";
  inputs."netpbm-master".owner = "riinr";
  inputs."netpbm-master".repo = "flake-nimble";
  inputs."netpbm-master".ref = "flake-pinning";
  inputs."netpbm-master".dir = "nimpkgs/n/netpbm/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}