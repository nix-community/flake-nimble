{
  description = ''a convention mainly created for `createThread` proc'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."packedArgs-main".type = "github";
  inputs."packedArgs-main".owner = "riinr";
  inputs."packedArgs-main".repo = "flake-nimble";
  inputs."packedArgs-main".ref = "flake-pinning";
  inputs."packedArgs-main".dir = "nimpkgs/p/packedArgs/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}