{
  description = ''A small but practical concatenative programming language and shell.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-min-v0_19_5.flake = false;
  inputs.src-min-v0_19_5.type = "github";
  inputs.src-min-v0_19_5.owner = "h3rald";
  inputs.src-min-v0_19_5.repo = "min";
  inputs.src-min-v0_19_5.ref = "refs/tags/v0.19.5";
  inputs.src-min-v0_19_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-min-v0_19_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_19_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-min-v0_19_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}