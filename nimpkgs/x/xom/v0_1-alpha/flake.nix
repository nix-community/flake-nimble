{
  description = ''Transform XML trees into performant JavaScript DOM calls at compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-xom-v0_1-alpha.flake = false;
  inputs.src-xom-v0_1-alpha.type = "github";
  inputs.src-xom-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-xom-v0_1-alpha.repo = "xom";
  inputs.src-xom-v0_1-alpha.ref = "refs/tags/v0.1-alpha";
  inputs.src-xom-v0_1-alpha.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xom-v0_1-alpha, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xom-v0_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xom-v0_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}