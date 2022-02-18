{
  description = ''De/serialization library for Nim '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-deser-v0_1_5.flake = false;
  inputs.src-deser-v0_1_5.type = "github";
  inputs.src-deser-v0_1_5.owner = "gabbhack";
  inputs.src-deser-v0_1_5.repo = "deser";
  inputs.src-deser-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-deser-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-deser-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}