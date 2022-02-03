{
  description = ''Nim Static Blog & Site Generator'';
  inputs.src-pine-master.flake = false;
  inputs.src-pine-master.type = "github";
  inputs.src-pine-master.owner = "Willyboar";
  inputs.src-pine-master.repo = "pine";
  inputs.src-pine-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-pine-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pine-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pine-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}