{
  description = ''UUID wrapper'';
  inputs.src-uuid-master.flake = false;
  inputs.src-uuid-master.type = "github";
  inputs.src-uuid-master.owner = "idlewan";
  inputs.src-uuid-master.repo = "nim-uuid";
  inputs.src-uuid-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-uuid-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uuid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}