{
  description = ''A client for the Arch Linux User Repository (AUR)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."aur-master".type = "github";
  inputs."aur-master".owner = "riinr";
  inputs."aur-master".repo = "flake-nimble";
  inputs."aur-master".ref = "flake-pinning";
  inputs."aur-master".dir = "nimpkgs/a/aur/master";

    inputs."aur-v0_2_0".type = "github";
  inputs."aur-v0_2_0".owner = "riinr";
  inputs."aur-v0_2_0".repo = "flake-nimble";
  inputs."aur-v0_2_0".ref = "flake-pinning";
  inputs."aur-v0_2_0".dir = "nimpkgs/a/aur/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}