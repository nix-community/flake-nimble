{
  description = ''Nim Game Library'';
  inputs.src-nimgl-0_3_5.flake = false;
  inputs.src-nimgl-0_3_5.type = "github";
  inputs.src-nimgl-0_3_5.owner = "nimgl";
  inputs.src-nimgl-0_3_5.repo = "nimgl";
  inputs.src-nimgl-0_3_5.ref = "refs/tags/0.3.5";
  
  outputs = { self, nixpkgs, src-nimgl-0_3_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}