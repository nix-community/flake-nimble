{
  description = ''"pointers" to cached AST that instantiate routines when called'';
  inputs.src-applicates-master.flake = false;
  inputs.src-applicates-master.type = "github";
  inputs.src-applicates-master.owner = "metagn";
  inputs.src-applicates-master.repo = "applicates";
  inputs.src-applicates-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-applicates-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-applicates-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-applicates-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}