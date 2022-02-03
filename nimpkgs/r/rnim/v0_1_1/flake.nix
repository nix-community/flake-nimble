{
  description = ''A bridge between R and Nim'';
  inputs.src-rnim-v0_1_1.flake = false;
  inputs.src-rnim-v0_1_1.type = "github";
  inputs.src-rnim-v0_1_1.owner = "SciNim";
  inputs.src-rnim-v0_1_1.repo = "rnim";
  inputs.src-rnim-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-rnim-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rnim-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rnim-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}