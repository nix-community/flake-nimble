{
  description = ''Temporary files and directories'';
  inputs.src-tempfile-0_1_6.flake = false;
  inputs.src-tempfile-0_1_6.type = "github";
  inputs.src-tempfile-0_1_6.owner = "OpenSystemsLab";
  inputs.src-tempfile-0_1_6.repo = "tempfile.nim";
  inputs.src-tempfile-0_1_6.ref = "refs/tags/0.1.6";
  
  outputs = { self, nixpkgs, src-tempfile-0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tempfile-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}