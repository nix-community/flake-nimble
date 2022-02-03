{
  description = ''Library for converting sequences to strings. Also has PHP-inspired explode and implode procs.'';
  inputs.src-sequester-master.flake = false;
  inputs.src-sequester-master.type = "github";
  inputs.src-sequester-master.owner = "fallingduck";
  inputs.src-sequester-master.repo = "sequester";
  inputs.src-sequester-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sequester-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequester-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sequester-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}