{
  description = ''Wrapper for microsoft's DirectX libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."directnimrod-master".type = "github";
  inputs."directnimrod-master".owner = "riinr";
  inputs."directnimrod-master".repo = "flake-nimble";
  inputs."directnimrod-master".ref = "flake-pinning";
  inputs."directnimrod-master".dir = "nimpkgs/d/directnimrod/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}