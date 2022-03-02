{
  description = ''Command-line args parser based on Usage message'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-docopt-v0_6_4.flake = false;
  inputs.src-docopt-v0_6_4.type = "github";
  inputs.src-docopt-v0_6_4.owner = "docopt";
  inputs.src-docopt-v0_6_4.repo = "docopt.nim";
  inputs.src-docopt-v0_6_4.ref = "refs/tags/v0.6.4";
  inputs.src-docopt-v0_6_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-docopt-v0_6_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-v0_6_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-docopt-v0_6_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}