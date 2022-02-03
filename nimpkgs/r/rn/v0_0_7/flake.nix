{
  description = ''minimal, performant mass file renamer'';
  inputs.src-rn-v0_0_7.flake = false;
  inputs.src-rn-v0_0_7.type = "github";
  inputs.src-rn-v0_0_7.owner = "xioren";
  inputs.src-rn-v0_0_7.repo = "rn";
  inputs.src-rn-v0_0_7.ref = "refs/tags/v0.0.7";
  
  outputs = { self, nixpkgs, src-rn-v0_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-v0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rn-v0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}