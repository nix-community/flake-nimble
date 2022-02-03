{
  description = ''A crafty implementation of structured logging for Nim'';
  inputs.src-chronicles-v0_4_2.flake = false;
  inputs.src-chronicles-v0_4_2.type = "github";
  inputs.src-chronicles-v0_4_2.owner = "status-im";
  inputs.src-chronicles-v0_4_2.repo = "nim-chronicles";
  inputs.src-chronicles-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, src-chronicles-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronicles-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chronicles-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}