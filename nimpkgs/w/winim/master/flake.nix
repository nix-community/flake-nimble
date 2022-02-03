{
  description = ''Nim's Windows API and COM Library'';
  inputs.src-winim-master.flake = false;
  inputs.src-winim-master.type = "github";
  inputs.src-winim-master.owner = "khchen";
  inputs.src-winim-master.repo = "winim";
  inputs.src-winim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-winim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}