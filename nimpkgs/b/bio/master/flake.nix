{
  description = ''Bytes utils for Nim.'';
  inputs.src-bio-master.flake = false;
  inputs.src-bio-master.type = "github";
  inputs.src-bio-master.owner = "xzeshen";
  inputs.src-bio-master.repo = "bio";
  inputs.src-bio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}