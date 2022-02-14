{
  description = ''a collection of useful macro functionalities'';
  inputs.src-macroplus-0_1_20.flake = false;
  inputs.src-macroplus-0_1_20.type = "github";
  inputs.src-macroplus-0_1_20.owner = "hamidb80";
  inputs.src-macroplus-0_1_20.repo = "macroplus";
  inputs.src-macroplus-0_1_20.ref = "refs/tags/0.1.20";
  
  outputs = { self, nixpkgs, src-macroplus-0_1_20, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-macroplus-0_1_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-macroplus-0_1_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}