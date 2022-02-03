{
  description = ''Temporary files and directories'';
  inputs.src-tempfile-0_1_5.flake = false;
  inputs.src-tempfile-0_1_5.type = "github";
  inputs.src-tempfile-0_1_5.owner = "OpenSystemsLab";
  inputs.src-tempfile-0_1_5.repo = "tempfile.nim";
  inputs.src-tempfile-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-tempfile-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tempfile-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}