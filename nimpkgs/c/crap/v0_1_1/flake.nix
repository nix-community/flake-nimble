{
  description = ''`rm` files without fear'';
  inputs.src-crap-v0_1_1.flake = false;
  inputs.src-crap-v0_1_1.type = "github";
  inputs.src-crap-v0_1_1.owner = "icyphox";
  inputs.src-crap-v0_1_1.repo = "crap";
  inputs.src-crap-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-crap-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crap-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}