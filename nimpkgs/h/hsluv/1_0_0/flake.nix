{
  description = ''A port of HSLuv, a human friendly alternative to HSL.'';
  inputs.src-hsluv-1_0_0.flake = false;
  inputs.src-hsluv-1_0_0.type = "github";
  inputs.src-hsluv-1_0_0.owner = "isthisnagee";
  inputs.src-hsluv-1_0_0.repo = "hsluv-nim";
  inputs.src-hsluv-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-hsluv-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hsluv-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hsluv-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}