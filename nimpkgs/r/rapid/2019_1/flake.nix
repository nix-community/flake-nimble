{
  description = ''A game engine for rapid development and easy prototyping'';
  inputs.src-rapid-2019_1.flake = false;
  inputs.src-rapid-2019_1.type = "github";
  inputs.src-rapid-2019_1.owner = "liquid600pgm";
  inputs.src-rapid-2019_1.repo = "rapid";
  inputs.src-rapid-2019_1.ref = "refs/tags/2019.1";
  
  outputs = { self, nixpkgs, src-rapid-2019_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rapid-2019_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rapid-2019_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}