{
  description = ''A Funge-98 interpreter written in nim'';
  inputs.src-nimfunge98-1_0_2.flake = false;
  inputs.src-nimfunge98-1_0_2.type = "other";
  inputs.src-nimfunge98-1_0_2.owner = "adyxax";
  inputs.src-nimfunge98-1_0_2.repo = "nimfunge98";
  inputs.src-nimfunge98-1_0_2.ref = "refs/tags/1.0.2";
  
  outputs = { self, nixpkgs, src-nimfunge98-1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfunge98-1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfunge98-1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}