{
  description = ''SHIORI Protocol Parser/Builder'';
  inputs.src-shiori-v1_3_0.flake = false;
  inputs.src-shiori-v1_3_0.type = "github";
  inputs.src-shiori-v1_3_0.owner = "Narazaka";
  inputs.src-shiori-v1_3_0.repo = "shiori-nim";
  inputs.src-shiori-v1_3_0.ref = "refs/tags/v1.3.0";
  
  outputs = { self, nixpkgs, src-shiori-v1_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shiori-v1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shiori-v1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}