{
  description = ''A D3.js wrapper for Nim'';
  inputs.src-d3-v0_1_2.flake = false;
  inputs.src-d3-v0_1_2.type = "github";
  inputs.src-d3-v0_1_2.owner = "hiteshjasani";
  inputs.src-d3-v0_1_2.repo = "nim-d3";
  inputs.src-d3-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-d3-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-d3-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-d3-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}