{
  description = ''A small but practical concatenative programming language and shell.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-min-v0_35_1.flake = false;
  inputs.src-min-v0_35_1.type = "github";
  inputs.src-min-v0_35_1.owner = "h3rald";
  inputs.src-min-v0_35_1.repo = "min";
  inputs.src-min-v0_35_1.ref = "refs/tags/v0.35.1";
  inputs.src-min-v0_35_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-min-v0_35_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_35_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-min-v0_35_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}