{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
  inputs.src-simple_parseopt-master.flake = false;
  inputs.src-simple_parseopt-master.type = "github";
  inputs.src-simple_parseopt-master.owner = "onelivesleft";
  inputs.src-simple_parseopt-master.repo = "simple_parseopt";
  inputs.src-simple_parseopt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-simple_parseopt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_parseopt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simple_parseopt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}