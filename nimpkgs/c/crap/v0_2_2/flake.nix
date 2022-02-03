{
  description = ''`rm` files without fear'';
  inputs.src-crap-v0_2_2.flake = false;
  inputs.src-crap-v0_2_2.type = "github";
  inputs.src-crap-v0_2_2.owner = "icyphox";
  inputs.src-crap-v0_2_2.repo = "crap";
  inputs.src-crap-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-crap-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crap-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}