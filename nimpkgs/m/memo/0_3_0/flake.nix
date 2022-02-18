{
  description = ''Memoize Nim functions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-memo-0_3_0.flake = false;
  inputs.src-memo-0_3_0.type = "github";
  inputs.src-memo-0_3_0.owner = "andreaferretti";
  inputs.src-memo-0_3_0.repo = "memo";
  inputs.src-memo-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-memo-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-memo-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-memo-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}