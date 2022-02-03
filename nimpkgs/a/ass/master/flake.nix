{
  description = ''Nim bindings for libass.'';
  inputs.src-ass-master.flake = false;
  inputs.src-ass-master.type = "github";
  inputs.src-ass-master.owner = "0kalekale";
  inputs.src-ass-master.repo = "libass-nim";
  inputs.src-ass-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ass-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}