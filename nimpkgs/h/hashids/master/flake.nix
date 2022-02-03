{
  description = ''Nim implementation of Hashids'';
  inputs.src-hashids-master.flake = false;
  inputs.src-hashids-master.type = "github";
  inputs.src-hashids-master.owner = "achesak";
  inputs.src-hashids-master.repo = "nim-hashids";
  inputs.src-hashids-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-hashids-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hashids-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hashids-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}