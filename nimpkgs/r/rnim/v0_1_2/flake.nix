{
  description = ''A bridge between R and Nim'';
  inputs.src-rnim-v0_1_2.flake = false;
  inputs.src-rnim-v0_1_2.type = "github";
  inputs.src-rnim-v0_1_2.owner = "SciNim";
  inputs.src-rnim-v0_1_2.repo = "rnim";
  inputs.src-rnim-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-rnim-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rnim-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rnim-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}