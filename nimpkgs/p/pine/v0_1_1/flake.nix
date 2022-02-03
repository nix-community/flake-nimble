{
  description = ''Nim Static Blog & Site Generator'';
  inputs.src-pine-v0_1_1.flake = false;
  inputs.src-pine-v0_1_1.type = "github";
  inputs.src-pine-v0_1_1.owner = "Willyboar";
  inputs.src-pine-v0_1_1.repo = "pine";
  inputs.src-pine-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."markdown".url = "path:../../../m/markdown";
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  
  inputs."rainbow".url = "path:../../../r/rainbow";
  inputs."rainbow".type = "github";
  inputs."rainbow".owner = "riinr";
  inputs."rainbow".repo = "flake-nimble";
  inputs."rainbow".ref = "flake-pinning";
  inputs."rainbow".dir = "nimpkgs/r/rainbow";

  outputs = { self, nixpkgs, src-pine-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pine-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pine-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}