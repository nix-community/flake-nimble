{
  description = ''libvlc bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libvlc-master".type = "github";
  inputs."libvlc-master".owner = "riinr";
  inputs."libvlc-master".repo = "flake-nimble";
  inputs."libvlc-master".ref = "flake-pinning";
  inputs."libvlc-master".dir = "nimpkgs/l/libvlc/master";

    inputs."libvlc-0_1".type = "github";
  inputs."libvlc-0_1".owner = "riinr";
  inputs."libvlc-0_1".repo = "flake-nimble";
  inputs."libvlc-0_1".ref = "flake-pinning";
  inputs."libvlc-0_1".dir = "nimpkgs/l/libvlc/0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}