{
  description = ''Nim Game Library'';
  inputs.src-nimgl-0_3_2.flake = false;
  inputs.src-nimgl-0_3_2.type = "github";
  inputs.src-nimgl-0_3_2.owner = "nimgl";
  inputs.src-nimgl-0_3_2.repo = "nimgl";
  inputs.src-nimgl-0_3_2.ref = "refs/tags/0.3.2";
  
  outputs = { self, nixpkgs, src-nimgl-0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}