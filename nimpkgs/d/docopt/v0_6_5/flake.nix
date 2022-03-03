{
  description = ''Command-line args parser based on Usage message'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-docopt-v0_6_5.flake = false;
  inputs.src-docopt-v0_6_5.type = "github";
  inputs.src-docopt-v0_6_5.owner = "docopt";
  inputs.src-docopt-v0_6_5.repo = "docopt.nim";
  inputs.src-docopt-v0_6_5.ref = "refs/tags/v0.6.5";
  inputs.src-docopt-v0_6_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-docopt-v0_6_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-v0_6_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-docopt-v0_6_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}