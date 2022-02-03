{
  description = ''Nim port of Python's grp module for working with the UNIX group database file'';
  inputs.src-grp-master.flake = false;
  inputs.src-grp-master.type = "github";
  inputs.src-grp-master.owner = "achesak";
  inputs.src-grp-master.repo = "nim-grp";
  inputs.src-grp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-grp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-grp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}