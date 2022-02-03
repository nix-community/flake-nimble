{
  description = ''PF_RING wrapper for Nim'';
  inputs.src-pfring-0_0_3.flake = false;
  inputs.src-pfring-0_0_3.type = "github";
  inputs.src-pfring-0_0_3.owner = "ba0f3";
  inputs.src-pfring-0_0_3.repo = "pfring.nim";
  inputs.src-pfring-0_0_3.ref = "refs/tags/0.0.3";
  
  outputs = { self, nixpkgs, src-pfring-0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pfring-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pfring-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}