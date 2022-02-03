{
  description = ''minimal, performant mass file renamer'';
  inputs.src-rn-v0_0_6.flake = false;
  inputs.src-rn-v0_0_6.type = "github";
  inputs.src-rn-v0_0_6.owner = "xioren";
  inputs.src-rn-v0_0_6.repo = "rn";
  inputs.src-rn-v0_0_6.ref = "refs/tags/v0.0.6";
  
  outputs = { self, nixpkgs, src-rn-v0_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-v0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rn-v0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}