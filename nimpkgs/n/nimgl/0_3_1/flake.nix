{
  description = ''Nim Game Library'';
  inputs.src-nimgl-0_3_1.flake = false;
  inputs.src-nimgl-0_3_1.type = "github";
  inputs.src-nimgl-0_3_1.owner = "nimgl";
  inputs.src-nimgl-0_3_1.repo = "nimgl";
  inputs.src-nimgl-0_3_1.ref = "refs/tags/0.3.1";
  
  outputs = { self, nixpkgs, src-nimgl-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}