{
  description = ''Wrapper of the file procedures to provide an interface as similar as possible to that of Python'';
  inputs.src-pythonfile-master.flake = false;
  inputs.src-pythonfile-master.type = "github";
  inputs.src-pythonfile-master.owner = "achesak";
  inputs.src-pythonfile-master.repo = "nim-pythonfile";
  inputs.src-pythonfile-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pythonfile-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pythonfile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pythonfile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}