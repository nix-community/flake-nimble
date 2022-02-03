{
  description = ''lib for ppm image'';
  inputs.src-PPM-master.flake = false;
  inputs.src-PPM-master.type = "github";
  inputs.src-PPM-master.owner = "LemonHX";
  inputs.src-PPM-master.repo = "PPM-Nim";
  inputs.src-PPM-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-PPM-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-PPM-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-PPM-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}