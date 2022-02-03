{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
  inputs.src-simple_parseopt-v1_0_9.flake = false;
  inputs.src-simple_parseopt-v1_0_9.type = "github";
  inputs.src-simple_parseopt-v1_0_9.owner = "onelivesleft";
  inputs.src-simple_parseopt-v1_0_9.repo = "simple_parseopt";
  inputs.src-simple_parseopt-v1_0_9.ref = "refs/tags/v1.0.9";
  
  outputs = { self, nixpkgs, src-simple_parseopt-v1_0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_parseopt-v1_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simple_parseopt-v1_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}