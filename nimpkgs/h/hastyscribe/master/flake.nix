{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
  inputs.src-hastyscribe-master.flake = false;
  inputs.src-hastyscribe-master.type = "github";
  inputs.src-hastyscribe-master.owner = "h3rald";
  inputs.src-hastyscribe-master.repo = "hastyscribe";
  inputs.src-hastyscribe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-hastyscribe-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastyscribe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}