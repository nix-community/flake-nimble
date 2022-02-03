{
  description = ''String interpolation with printf syntax'';
  inputs.src-stringinterpolation-master.flake = false;
  inputs.src-stringinterpolation-master.type = "github";
  inputs.src-stringinterpolation-master.owner = "bluenote10";
  inputs.src-stringinterpolation-master.repo = "nim-stringinterpolation";
  inputs.src-stringinterpolation-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stringinterpolation-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stringinterpolation-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stringinterpolation-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}