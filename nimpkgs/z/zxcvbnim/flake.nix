{
  description = ''A zxcvbn clone for Nim. Written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."zxcvbnim-main".type = "github";
  inputs."zxcvbnim-main".owner = "riinr";
  inputs."zxcvbnim-main".repo = "flake-nimble";
  inputs."zxcvbnim-main".ref = "flake-pinning";
  inputs."zxcvbnim-main".dir = "nimpkgs/z/zxcvbnim/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}