{
  description = ''Nim Static Blog & Site Generator'';
  inputs.src-pine-v0_1_0.flake = false;
  inputs.src-pine-v0_1_0.type = "github";
  inputs.src-pine-v0_1_0.owner = "Willyboar";
  inputs.src-pine-v0_1_0.repo = "pine";
  inputs.src-pine-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
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

  outputs = { self, nixpkgs, src-pine-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pine-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pine-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}