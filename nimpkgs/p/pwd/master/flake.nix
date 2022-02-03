{
  description = ''Nim port of Python's pwd module for working with the UNIX password file'';
  inputs.src-pwd-master.flake = false;
  inputs.src-pwd-master.type = "github";
  inputs.src-pwd-master.owner = "achesak";
  inputs.src-pwd-master.repo = "nim-pwd";
  inputs.src-pwd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pwd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pwd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pwd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}