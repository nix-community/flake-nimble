{
  description = ''Drag and drop source / target'';
  inputs.src-dnd-v0_5_0.flake = false;
  inputs.src-dnd-v0_5_0.type = "github";
  inputs.src-dnd-v0_5_0.owner = "adokitkat";
  inputs.src-dnd-v0_5_0.repo = "dnd";
  inputs.src-dnd-v0_5_0.ref = "refs/tags/v0.5.0";
  
  
  inputs."gintro".url = "path:../../../g/gintro";
  inputs."gintro".type = "github";
  inputs."gintro".owner = "riinr";
  inputs."gintro".repo = "flake-nimble";
  inputs."gintro".ref = "flake-pinning";
  inputs."gintro".dir = "nimpkgs/g/gintro";

  outputs = { self, nixpkgs, src-dnd-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnd-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnd-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}