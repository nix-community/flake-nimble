{
  description = ''Parsing and serializing for the TNetstring format.'';
  inputs.src-tnetstring-master.flake = false;
  inputs.src-tnetstring-master.type = "github";
  inputs.src-tnetstring-master.owner = "mahlonsmith";
  inputs.src-tnetstring-master.repo = "nim-tnetstring";
  inputs.src-tnetstring-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tnetstring-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tnetstring-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tnetstring-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}