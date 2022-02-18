{
  description = ''Wrapper-less C/C++ interop for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimline-v0_1_5.flake = false;
  inputs.src-nimline-v0_1_5.type = "github";
  inputs.src-nimline-v0_1_5.owner = "fragcolor-xyz";
  inputs.src-nimline-v0_1_5.repo = "nimline";
  inputs.src-nimline-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimline-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimline-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimline-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}