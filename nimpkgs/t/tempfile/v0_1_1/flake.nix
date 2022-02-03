{
  description = ''Temporary files and directories'';
  inputs.src-tempfile-v0_1_1.flake = false;
  inputs.src-tempfile-v0_1_1.type = "github";
  inputs.src-tempfile-v0_1_1.owner = "OpenSystemsLab";
  inputs.src-tempfile-v0_1_1.repo = "tempfile.nim";
  inputs.src-tempfile-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-tempfile-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tempfile-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}