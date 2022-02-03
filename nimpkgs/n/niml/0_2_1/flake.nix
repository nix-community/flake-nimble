{
  description = ''html dsl'';
  inputs.src-niml-0_2_1.flake = false;
  inputs.src-niml-0_2_1.type = "github";
  inputs.src-niml-0_2_1.owner = "jakubDoka";
  inputs.src-niml-0_2_1.repo = "niml";
  inputs.src-niml-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-niml-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niml-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niml-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}