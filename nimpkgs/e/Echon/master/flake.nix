{
  description = ''A small package to create lindenmayer-systems or l-systems.'';
  inputs.src-Echon-master.flake = false;
  inputs.src-Echon-master.type = "github";
  inputs.src-Echon-master.owner = "eXodiquas";
  inputs.src-Echon-master.repo = "Echon";
  inputs.src-Echon-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-Echon-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Echon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Echon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}