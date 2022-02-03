{
  description = ''`rm` files without fear'';
  inputs.src-crap-v0_2_1.flake = false;
  inputs.src-crap-v0_2_1.type = "github";
  inputs.src-crap-v0_2_1.owner = "icyphox";
  inputs.src-crap-v0_2_1.repo = "crap";
  inputs.src-crap-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-crap-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crap-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}