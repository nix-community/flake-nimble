{
  description = ''A blog post generator for people with priorities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jeknil-v0_2_0.flake = false;
  inputs.src-jeknil-v0_2_0.type = "github";
  inputs.src-jeknil-v0_2_0.owner = "tonogram";
  inputs.src-jeknil-v0_2_0.repo = "jeknil";
  inputs.src-jeknil-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jeknil-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jeknil-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jeknil-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}