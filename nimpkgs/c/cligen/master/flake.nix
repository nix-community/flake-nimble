{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-master.flake = false;
  inputs.src-cligen-master.type = "github";
  inputs.src-cligen-master.owner = "c-blake";
  inputs.src-cligen-master.repo = "cligen";
  inputs.src-cligen-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cligen-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}