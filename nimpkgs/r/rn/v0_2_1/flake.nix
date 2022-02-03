{
  description = ''minimal, performant mass file renamer'';
  inputs.src-rn-v0_2_1.flake = false;
  inputs.src-rn-v0_2_1.type = "github";
  inputs.src-rn-v0_2_1.owner = "xioren";
  inputs.src-rn-v0_2_1.repo = "rn";
  inputs.src-rn-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-rn-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rn-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}