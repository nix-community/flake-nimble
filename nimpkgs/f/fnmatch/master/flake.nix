{
  description = ''Nim module for filename matching with UNIX shell patterns'';
  inputs.src-fnmatch-master.flake = false;
  inputs.src-fnmatch-master.type = "github";
  inputs.src-fnmatch-master.owner = "achesak";
  inputs.src-fnmatch-master.repo = "nim-fnmatch";
  inputs.src-fnmatch-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fnmatch-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fnmatch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fnmatch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}