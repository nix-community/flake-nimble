{
  description = ''A Nim library to create and manage temporary directories.'';
  inputs.src-tempdir-v1_0_0.flake = false;
  inputs.src-tempdir-v1_0_0.type = "github";
  inputs.src-tempdir-v1_0_0.owner = "euantorano";
  inputs.src-tempdir-v1_0_0.repo = "tempdir.nim";
  inputs.src-tempdir-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-tempdir-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempdir-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tempdir-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}