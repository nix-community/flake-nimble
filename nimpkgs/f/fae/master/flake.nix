{
  description = ''Find and Edit Utility'';
  inputs.src-fae-master.flake = false;
  inputs.src-fae-master.type = "github";
  inputs.src-fae-master.owner = "h3rald";
  inputs.src-fae-master.repo = "fae";
  inputs.src-fae-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fae-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fae-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fae-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}