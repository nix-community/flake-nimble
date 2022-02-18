{
  description = ''Transform XML trees into performant JavaScript DOM calls at compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xom-v0_1-alpha.flake = false;
  inputs.src-xom-v0_1-alpha.type = "github";
  inputs.src-xom-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-xom-v0_1-alpha.repo = "xom";
  inputs.src-xom-v0_1-alpha.ref = "refs/tags/v0.1-alpha";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xom-v0_1-alpha, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xom-v0_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xom-v0_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}