{
  description = ''Nim port of Python's spwd module for working with the UNIX shadow password file'';
  inputs.src-spwd-master.flake = false;
  inputs.src-spwd-master.type = "github";
  inputs.src-spwd-master.owner = "achesak";
  inputs.src-spwd-master.repo = "nim-spwd";
  inputs.src-spwd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-spwd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spwd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spwd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}