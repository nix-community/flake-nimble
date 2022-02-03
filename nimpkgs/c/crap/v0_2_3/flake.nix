{
  description = ''`rm` files without fear'';
  inputs.src-crap-v0_2_3.flake = false;
  inputs.src-crap-v0_2_3.type = "github";
  inputs.src-crap-v0_2_3.owner = "icyphox";
  inputs.src-crap-v0_2_3.repo = "crap";
  inputs.src-crap-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-crap-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crap-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}