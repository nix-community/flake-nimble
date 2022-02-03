{
  description = ''Postgres Database ORM for Nim'';
  inputs.src-gatabase-master.flake = false;
  inputs.src-gatabase-master.type = "github";
  inputs.src-gatabase-master.owner = "juancarlospaco";
  inputs.src-gatabase-master.repo = "nim-gatabase";
  inputs.src-gatabase-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gatabase-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gatabase-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gatabase-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}