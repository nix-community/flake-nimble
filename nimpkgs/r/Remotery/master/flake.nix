{
  description = ''Nim wrapper for (and with) Celtoys's Remotery'';
  inputs.src-Remotery-master.flake = false;
  inputs.src-Remotery-master.type = "github";
  inputs.src-Remotery-master.owner = "Halsys";
  inputs.src-Remotery-master.repo = "Nim-Remotery";
  inputs.src-Remotery-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-Remotery-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Remotery-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Remotery-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}