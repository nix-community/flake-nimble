{
  description = ''High-level Wren wrapper'';
  inputs.src-euwren-0_1_0.flake = false;
  inputs.src-euwren-0_1_0.type = "github";
  inputs.src-euwren-0_1_0.owner = "liquid600pgm";
  inputs.src-euwren-0_1_0.repo = "euwren";
  inputs.src-euwren-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-euwren-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-euwren-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-euwren-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}