{
  description = ''Nim Game Library'';
  inputs.src-nimgl-1_1_10.flake = false;
  inputs.src-nimgl-1_1_10.type = "github";
  inputs.src-nimgl-1_1_10.owner = "nimgl";
  inputs.src-nimgl-1_1_10.repo = "nimgl";
  inputs.src-nimgl-1_1_10.ref = "refs/tags/1.1.10";
  
  outputs = { self, nixpkgs, src-nimgl-1_1_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-1_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-1_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}