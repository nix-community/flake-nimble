{
  description = ''Nim module for parsing SubViewer subtitle files'';
  inputs.src-subviewer-master.flake = false;
  inputs.src-subviewer-master.type = "github";
  inputs.src-subviewer-master.owner = "achesak";
  inputs.src-subviewer-master.repo = "nim-subviewer";
  inputs.src-subviewer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-subviewer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subviewer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-subviewer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}