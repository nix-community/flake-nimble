{
  description = ''Implementation of exponential backoff for nim'';
  inputs.src-backoff-v0_1.flake = false;
  inputs.src-backoff-v0_1.type = "github";
  inputs.src-backoff-v0_1.owner = "CORDEA";
  inputs.src-backoff-v0_1.repo = "backoff";
  inputs.src-backoff-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, src-backoff-v0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-backoff-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-backoff-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}