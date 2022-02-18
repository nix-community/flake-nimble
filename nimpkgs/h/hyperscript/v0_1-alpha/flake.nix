{
  description = ''Create HyperText with Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hyperscript-v0_1-alpha.flake = false;
  inputs.src-hyperscript-v0_1-alpha.type = "github";
  inputs.src-hyperscript-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-hyperscript-v0_1-alpha.repo = "hyperscript";
  inputs.src-hyperscript-v0_1-alpha.ref = "refs/tags/v0.1-alpha";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hyperscript-v0_1-alpha, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hyperscript-v0_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hyperscript-v0_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}