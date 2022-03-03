{
  description = ''Wrapper around the Linux framebuffer driver ioctl API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."linuxfb-master".type = "github";
  inputs."linuxfb-master".owner = "riinr";
  inputs."linuxfb-master".repo = "flake-nimble";
  inputs."linuxfb-master".ref = "flake-pinning";
  inputs."linuxfb-master".dir = "nimpkgs/l/linuxfb/master";
  inputs."linuxfb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."linuxfb-v0_1_0".type = "github";
  inputs."linuxfb-v0_1_0".owner = "riinr";
  inputs."linuxfb-v0_1_0".repo = "flake-nimble";
  inputs."linuxfb-v0_1_0".ref = "flake-pinning";
  inputs."linuxfb-v0_1_0".dir = "nimpkgs/l/linuxfb/v0_1_0";
  inputs."linuxfb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."linuxfb-v0_1_1".type = "github";
  inputs."linuxfb-v0_1_1".owner = "riinr";
  inputs."linuxfb-v0_1_1".repo = "flake-nimble";
  inputs."linuxfb-v0_1_1".ref = "flake-pinning";
  inputs."linuxfb-v0_1_1".dir = "nimpkgs/l/linuxfb/v0_1_1";
  inputs."linuxfb-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}