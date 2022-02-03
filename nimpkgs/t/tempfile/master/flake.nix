{
  description = ''Temporary files and directories'';
  inputs.src-tempfile-master.flake = false;
  inputs.src-tempfile-master.type = "github";
  inputs.src-tempfile-master.owner = "OpenSystemsLab";
  inputs.src-tempfile-master.repo = "tempfile.nim";
  inputs.src-tempfile-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tempfile-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tempfile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}