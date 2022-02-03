{
  description = ''Convert between RGB, YIQ, HLS, and HSV color systems.'';
  inputs.src-colorsys-master.flake = false;
  inputs.src-colorsys-master.type = "github";
  inputs.src-colorsys-master.owner = "achesak";
  inputs.src-colorsys-master.repo = "nim-colorsys";
  inputs.src-colorsys-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-colorsys-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorsys-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-colorsys-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}