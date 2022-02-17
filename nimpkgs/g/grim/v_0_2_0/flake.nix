{
  description = ''Graphs in nim!'';
  inputs.src-grim-v_0_2_0.flake = false;
  inputs.src-grim-v_0_2_0.type = "github";
  inputs.src-grim-v_0_2_0.owner = "ebran";
  inputs.src-grim-v_0_2_0.repo = "grim";
  inputs.src-grim-v_0_2_0.ref = "refs/tags/v.0.2.0";
  
  
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  outputs = { self, nixpkgs, src-grim-v_0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grim-v_0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-grim-v_0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}