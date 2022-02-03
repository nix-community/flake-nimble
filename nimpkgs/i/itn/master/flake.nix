{
  description = ''Nim module for parsing ITN (TomTom intinerary) files'';
  inputs.src-itn-master.flake = false;
  inputs.src-itn-master.type = "github";
  inputs.src-itn-master.owner = "achesak";
  inputs.src-itn-master.repo = "nim-itn";
  inputs.src-itn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-itn-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-itn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}