{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
  inputs.src-simple_parseopt-v1_0_8.flake = false;
  inputs.src-simple_parseopt-v1_0_8.type = "github";
  inputs.src-simple_parseopt-v1_0_8.owner = "onelivesleft";
  inputs.src-simple_parseopt-v1_0_8.repo = "simple_parseopt";
  inputs.src-simple_parseopt-v1_0_8.ref = "refs/tags/v1.0.8";
  
  outputs = { self, nixpkgs, src-simple_parseopt-v1_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simple_parseopt-v1_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simple_parseopt-v1_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}