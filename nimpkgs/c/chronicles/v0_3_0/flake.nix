{
  description = ''A crafty implementation of structured logging for Nim'';
  inputs.src-chronicles-v0_3_0.flake = false;
  inputs.src-chronicles-v0_3_0.type = "github";
  inputs.src-chronicles-v0_3_0.owner = "status-im";
  inputs.src-chronicles-v0_3_0.repo = "nim-chronicles";
  inputs.src-chronicles-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-chronicles-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronicles-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chronicles-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}