{
  description = ''Command-line args parser based on Usage message'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-docopt-v0_6_0.flake = false;
  inputs.src-docopt-v0_6_0.type = "github";
  inputs.src-docopt-v0_6_0.owner = "docopt";
  inputs.src-docopt-v0_6_0.repo = "docopt.nim";
  inputs.src-docopt-v0_6_0.ref = "refs/tags/v0.6.0";
  inputs.src-docopt-v0_6_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-docopt-v0_6_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-docopt-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}