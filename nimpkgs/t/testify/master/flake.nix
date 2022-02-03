{
  description = ''File-based unit testing system'';
  inputs.src-testify-master.flake = false;
  inputs.src-testify-master.type = "github";
  inputs.src-testify-master.owner = "sealmove";
  inputs.src-testify-master.repo = "testify";
  inputs.src-testify-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-testify-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-testify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}