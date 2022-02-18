{
  description = ''A small but practical concatenative programming language and shell.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-min-v0_19_3.flake = false;
  inputs.src-min-v0_19_3.type = "github";
  inputs.src-min-v0_19_3.owner = "h3rald";
  inputs.src-min-v0_19_3.repo = "min";
  inputs.src-min-v0_19_3.ref = "refs/tags/v0.19.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-min-v0_19_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_19_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-min-v0_19_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}