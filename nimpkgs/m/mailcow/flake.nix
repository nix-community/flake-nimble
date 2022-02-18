{
  description = ''Simple API wrapper for Mailcow'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."mailcow-main".type = "github";
  inputs."mailcow-main".owner = "riinr";
  inputs."mailcow-main".repo = "flake-nimble";
  inputs."mailcow-main".ref = "flake-pinning";
  inputs."mailcow-main".dir = "nimpkgs/m/mailcow/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}