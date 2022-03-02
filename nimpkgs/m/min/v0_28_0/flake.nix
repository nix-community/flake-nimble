{
  description = ''A small but practical concatenative programming language and shell.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-min-v0_28_0.flake = false;
  inputs.src-min-v0_28_0.type = "github";
  inputs.src-min-v0_28_0.owner = "h3rald";
  inputs.src-min-v0_28_0.repo = "min";
  inputs.src-min-v0_28_0.ref = "refs/tags/v0.28.0";
  inputs.src-min-v0_28_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-min-v0_28_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_28_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-min-v0_28_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}