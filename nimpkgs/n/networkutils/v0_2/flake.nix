{
  description = ''Various networking utils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-networkutils-v0_2.flake = false;
  inputs.src-networkutils-v0_2.type = "github";
  inputs.src-networkutils-v0_2.owner = "q-Master";
  inputs.src-networkutils-v0_2.repo = "networkutils.nim";
  inputs.src-networkutils-v0_2.ref = "refs/tags/v0.2";
  
  
  inputs."ptr_math".type = "github";
  inputs."ptr_math".owner = "riinr";
  inputs."ptr_math".repo = "flake-nimble";
  inputs."ptr_math".ref = "flake-pinning";
  inputs."ptr_math".dir = "nimpkgs/p/ptr_math";

  outputs = { self, nixpkgs, flakeNimbleLib, src-networkutils-v0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-networkutils-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-networkutils-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}