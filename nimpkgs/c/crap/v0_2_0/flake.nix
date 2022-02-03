{
  description = ''`rm` files without fear'';
  inputs.src-crap-v0_2_0.flake = false;
  inputs.src-crap-v0_2_0.type = "github";
  inputs.src-crap-v0_2_0.owner = "icyphox";
  inputs.src-crap-v0_2_0.repo = "crap";
  inputs.src-crap-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-crap-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crap-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}