{
  description = ''A blog post generator for people with priorities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jeknil-master.flake = false;
  inputs.src-jeknil-master.type = "github";
  inputs.src-jeknil-master.owner = "tonogram";
  inputs.src-jeknil-master.repo = "jeknil";
  inputs.src-jeknil-master.ref = "refs/heads/master";
  
  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jeknil-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jeknil-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jeknil-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}