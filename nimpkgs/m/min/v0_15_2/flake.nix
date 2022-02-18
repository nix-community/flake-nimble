{
  description = ''A small but practical concatenative programming language and shell.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-min-v0_15_2.flake = false;
  inputs.src-min-v0_15_2.type = "github";
  inputs.src-min-v0_15_2.owner = "h3rald";
  inputs.src-min-v0_15_2.repo = "min";
  inputs.src-min-v0_15_2.ref = "refs/tags/v0.15.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-min-v0_15_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_15_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-min-v0_15_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}