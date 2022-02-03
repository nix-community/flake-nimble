{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
  inputs.src-simple_parseopt-v1_1_1.flake = false;
  inputs.src-simple_parseopt-v1_1_1.type = "github";
  inputs.src-simple_parseopt-v1_1_1.owner = "onelivesleft";
  inputs.src-simple_parseopt-v1_1_1.repo = "simple_parseopt";
  inputs.src-simple_parseopt-v1_1_1.ref = "refs/tags/v1.1.1";
  
  outputs = { self, nixpkgs, src-simple_parseopt-v1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_parseopt-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simple_parseopt-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}