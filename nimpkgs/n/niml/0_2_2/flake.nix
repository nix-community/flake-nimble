{
  description = ''html dsl'';
  inputs.src-niml-0_2_2.flake = false;
  inputs.src-niml-0_2_2.type = "github";
  inputs.src-niml-0_2_2.owner = "jakubDoka";
  inputs.src-niml-0_2_2.repo = "niml";
  inputs.src-niml-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-niml-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niml-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niml-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}