{
  description = ''Convert Ogham inscriptions to latin text & vice versa.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ogham-main".type = "github";
  inputs."ogham-main".owner = "riinr";
  inputs."ogham-main".repo = "flake-nimble";
  inputs."ogham-main".ref = "flake-pinning";
  inputs."ogham-main".dir = "nimpkgs/o/ogham/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}