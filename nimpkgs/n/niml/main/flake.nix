{
  description = ''html dsl'';
  inputs.src-niml-main.flake = false;
  inputs.src-niml-main.type = "github";
  inputs.src-niml-main.owner = "jakubDoka";
  inputs.src-niml-main.repo = "niml";
  inputs.src-niml-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-niml-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niml-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niml-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}