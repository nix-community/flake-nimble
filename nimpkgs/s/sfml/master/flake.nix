{
  description = ''High level OpenGL-based Game Library'';
  inputs.src-sfml-master.flake = false;
  inputs.src-sfml-master.type = "github";
  inputs.src-sfml-master.owner = "fowlmouth";
  inputs.src-sfml-master.repo = "nimrod-sfml";
  inputs.src-sfml-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sfml-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sfml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sfml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}