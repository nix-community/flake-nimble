{
  description = ''Temporary files and directories'';
  inputs.src-tempfile-0_1_7.flake = false;
  inputs.src-tempfile-0_1_7.type = "github";
  inputs.src-tempfile-0_1_7.owner = "OpenSystemsLab";
  inputs.src-tempfile-0_1_7.repo = "tempfile.nim";
  inputs.src-tempfile-0_1_7.ref = "refs/tags/0.1.7";
  
  outputs = { self, nixpkgs, src-tempfile-0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tempfile-0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}