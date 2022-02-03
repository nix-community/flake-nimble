{
  description = ''Low level wrapper for the fontconfig library.'';
  inputs.src-fontconfig-master.flake = false;
  inputs.src-fontconfig-master.type = "github";
  inputs.src-fontconfig-master.owner = "Parashurama";
  inputs.src-fontconfig-master.repo = "fontconfig";
  inputs.src-fontconfig-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fontconfig-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fontconfig-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fontconfig-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}