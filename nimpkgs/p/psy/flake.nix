{
  description = ''A fast, multi-threading and disk space efficient package manager for PHP development and production environments'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."psy-main".type = "github";
  inputs."psy-main".owner = "riinr";
  inputs."psy-main".repo = "flake-nimble";
  inputs."psy-main".ref = "flake-pinning";
  inputs."psy-main".dir = "nimpkgs/p/psy/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}