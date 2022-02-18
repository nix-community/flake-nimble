{
  description = ''Metaprogramming tools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-metatools-v0_1_0.flake = false;
  inputs.src-metatools-v0_1_0.type = "github";
  inputs.src-metatools-v0_1_0.owner = "jxy";
  inputs.src-metatools-v0_1_0.repo = "metatools";
  inputs.src-metatools-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-metatools-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metatools-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-metatools-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}