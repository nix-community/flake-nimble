{
  description = ''Wrapper-less C/C++ interop for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimline-v0_1_6.flake = false;
  inputs.src-nimline-v0_1_6.type = "github";
  inputs.src-nimline-v0_1_6.owner = "fragcolor-xyz";
  inputs.src-nimline-v0_1_6.repo = "nimline";
  inputs.src-nimline-v0_1_6.ref = "refs/tags/v0.1.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimline-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimline-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimline-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}