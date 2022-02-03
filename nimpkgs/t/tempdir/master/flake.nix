{
  description = ''A Nim library to create and manage temporary directories.'';
  inputs.src-tempdir-master.flake = false;
  inputs.src-tempdir-master.type = "github";
  inputs.src-tempdir-master.owner = "euantorano";
  inputs.src-tempdir-master.repo = "tempdir.nim";
  inputs.src-tempdir-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tempdir-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempdir-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tempdir-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}