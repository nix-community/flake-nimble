{
  description = ''Accurate summation functions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sums-main.flake = false;
  inputs.src-sums-main.type = "github";
  inputs.src-sums-main.owner = "planetis-m";
  inputs.src-sums-main.repo = "sums";
  inputs.src-sums-main.ref = "refs/heads/main";
  inputs.src-sums-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sums-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sums-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sums-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}