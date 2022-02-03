{
  description = ''Nim Game Library'';
  inputs.src-nimgl-1_1_6.flake = false;
  inputs.src-nimgl-1_1_6.type = "github";
  inputs.src-nimgl-1_1_6.owner = "nimgl";
  inputs.src-nimgl-1_1_6.repo = "nimgl";
  inputs.src-nimgl-1_1_6.ref = "refs/tags/1.1.6";
  
  outputs = { self, nixpkgs, src-nimgl-1_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-1_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}