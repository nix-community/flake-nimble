{
  description = ''Wrapper-less C/C++ interop for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimline-v0_1_7.flake = false;
  inputs.src-nimline-v0_1_7.type = "github";
  inputs.src-nimline-v0_1_7.owner = "fragcolor-xyz";
  inputs.src-nimline-v0_1_7.repo = "nimline";
  inputs.src-nimline-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimline-v0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimline-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimline-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}