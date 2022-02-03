{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-0_2_3.flake = false;
  inputs.src-inim-0_2_3.type = "github";
  inputs.src-inim-0_2_3.owner = "inim-repl";
  inputs.src-inim-0_2_3.repo = "INim";
  inputs.src-inim-0_2_3.ref = "refs/tags/0.2.3";
  
  outputs = { self, nixpkgs, src-inim-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}