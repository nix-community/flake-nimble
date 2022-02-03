{
  description = ''A bridge between R and Nim'';
  inputs.src-rnim-v0_1_5.flake = false;
  inputs.src-rnim-v0_1_5.type = "github";
  inputs.src-rnim-v0_1_5.owner = "SciNim";
  inputs.src-rnim-v0_1_5.repo = "rnim";
  inputs.src-rnim-v0_1_5.ref = "refs/tags/v0.1.5";
  
  outputs = { self, nixpkgs, src-rnim-v0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rnim-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rnim-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}