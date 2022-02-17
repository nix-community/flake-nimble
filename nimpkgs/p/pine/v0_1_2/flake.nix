{
  description = ''Nim Static Blog & Site Generator'';
  inputs.src-pine-v0_1_2.flake = false;
  inputs.src-pine-v0_1_2.type = "github";
  inputs.src-pine-v0_1_2.owner = "Willyboar";
  inputs.src-pine-v0_1_2.repo = "pine";
  inputs.src-pine-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  
  inputs."rainbow".type = "github";
  inputs."rainbow".owner = "riinr";
  inputs."rainbow".repo = "flake-nimble";
  inputs."rainbow".ref = "flake-pinning";
  inputs."rainbow".dir = "nimpkgs/r/rainbow";

  outputs = { self, nixpkgs, src-pine-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pine-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pine-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}