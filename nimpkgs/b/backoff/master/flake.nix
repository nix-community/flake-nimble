{
  description = ''Implementation of exponential backoff for nim'';
  inputs.src-backoff-master.flake = false;
  inputs.src-backoff-master.type = "github";
  inputs.src-backoff-master.owner = "CORDEA";
  inputs.src-backoff-master.repo = "backoff";
  inputs.src-backoff-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-backoff-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-backoff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-backoff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}