{
  description = ''PLZ Python PIP alternative'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."plz-master".type = "github";
  inputs."plz-master".owner = "riinr";
  inputs."plz-master".repo = "flake-nimble";
  inputs."plz-master".ref = "flake-pinning";
  inputs."plz-master".dir = "nimpkgs/p/plz/master";

    inputs."plz-0_0_1".type = "github";
  inputs."plz-0_0_1".owner = "riinr";
  inputs."plz-0_0_1".repo = "flake-nimble";
  inputs."plz-0_0_1".ref = "flake-pinning";
  inputs."plz-0_0_1".dir = "nimpkgs/p/plz/0_0_1";

    inputs."plz-init".type = "github";
  inputs."plz-init".owner = "riinr";
  inputs."plz-init".repo = "flake-nimble";
  inputs."plz-init".ref = "flake-pinning";
  inputs."plz-init".dir = "nimpkgs/p/plz/init";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}