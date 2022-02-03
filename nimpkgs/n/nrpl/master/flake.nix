{
  description = ''A rudimentary Nim REPL'';
  inputs.src-nrpl-master.flake = false;
  inputs.src-nrpl-master.type = "github";
  inputs.src-nrpl-master.owner = "vegansk";
  inputs.src-nrpl-master.repo = "nrpl";
  inputs.src-nrpl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nrpl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nrpl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nrpl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}