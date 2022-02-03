{
  description = ''A package that makes creating macros easier'';
  inputs.src-macroutils-v1_1_0.flake = false;
  inputs.src-macroutils-v1_1_0.type = "github";
  inputs.src-macroutils-v1_1_0.owner = "PMunch";
  inputs.src-macroutils-v1_1_0.repo = "macroutils";
  inputs.src-macroutils-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-macroutils-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-macroutils-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-macroutils-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}