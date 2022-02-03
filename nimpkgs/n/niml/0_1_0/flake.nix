{
  description = ''html dsl'';
  inputs.src-niml-0_1_0.flake = false;
  inputs.src-niml-0_1_0.type = "github";
  inputs.src-niml-0_1_0.owner = "jakubDoka";
  inputs.src-niml-0_1_0.repo = "niml";
  inputs.src-niml-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-niml-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niml-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niml-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}