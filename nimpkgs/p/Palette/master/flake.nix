{
  description = ''Color Library'';
  inputs.src-Palette-master.flake = false;
  inputs.src-Palette-master.type = "github";
  inputs.src-Palette-master.owner = "momeemt";
  inputs.src-Palette-master.repo = "Palette";
  inputs.src-Palette-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-Palette-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Palette-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Palette-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}