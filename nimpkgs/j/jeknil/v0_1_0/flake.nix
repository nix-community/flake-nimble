{
  description = ''A blog post generator for people with priorities.'';
  inputs.src-jeknil-v0_1_0.flake = false;
  inputs.src-jeknil-v0_1_0.type = "github";
  inputs.src-jeknil-v0_1_0.owner = "tonogram";
  inputs.src-jeknil-v0_1_0.repo = "jeknil";
  inputs.src-jeknil-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."markdown".url = "path:../../../m/markdown";
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  outputs = { self, nixpkgs, src-jeknil-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jeknil-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jeknil-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}