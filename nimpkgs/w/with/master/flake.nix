{
  description = ''Simple 'with' macro for Nim'';
  inputs.src-with-master.flake = false;
  inputs.src-with-master.type = "github";
  inputs.src-with-master.owner = "zevv";
  inputs.src-with-master.repo = "with";
  inputs.src-with-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-with-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-with-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-with-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}